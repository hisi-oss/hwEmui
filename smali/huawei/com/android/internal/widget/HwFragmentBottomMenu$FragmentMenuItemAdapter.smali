.class Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$FragmentMenuItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HwFragmentBottomMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentMenuItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;


# direct methods
.method public constructor <init>(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 721
    .local p4, "items":Ljava/util/List;, "Ljava/util/List<Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;>;"
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$FragmentMenuItemAdapter;->this$0:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;

    .line 722
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 723
    iput-object p4, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$FragmentMenuItemAdapter;->mItems:Ljava/util/List;

    .line 724
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 731
    if-nez p2, :cond_0

    .line 732
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$FragmentMenuItemAdapter;->this$0:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;

    invoke-static {v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->access$400(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x2070023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 733
    new-instance v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$ViewHolder;

    invoke-direct {v0, v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$ViewHolder;-><init>(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$1;)V

    .line 734
    .local v0, "holder":Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$ViewHolder;
    const v1, 0x210004e

    .line 735
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$ViewHolder;->text:Landroid/widget/TextView;

    .line 736
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 738
    .end local v0    # "holder":Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$ViewHolder;

    .line 741
    .restart local v0    # "holder":Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$ViewHolder;
    :goto_0
    iget-object v1, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$FragmentMenuItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;

    invoke-virtual {v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v1, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$FragmentMenuItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;

    invoke-virtual {v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 744
    return-object p2
.end method
