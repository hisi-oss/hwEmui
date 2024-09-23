.class public Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;
.super Ljava/lang/Object;
.source "HwFragmentBottomMenu.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HwFragmentMenu"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMenuItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->mMenuItemList:Ljava/util/List;

    .line 758
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->mContext:Landroid/content/Context;

    .line 759
    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "titleRes"    # I

    .line 766
    const/4 v0, 0x0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "titleRes"    # I

    .line 784
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 770
    if-gez p2, :cond_0

    .line 771
    const/4 v0, 0x0

    return-object v0

    .line 773
    :cond_0
    invoke-virtual {p0, p2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 774
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 775
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 776
    return-object v0

    .line 778
    :cond_1
    new-instance v1, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2, p4}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;)V

    move-object v0, v1

    .line 779
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->mMenuItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 762
    const/4 v0, 0x0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .line 790
    const/4 v0, 0x0

    return v0
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "titleRes"    # I

    .line 798
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "titleRes"    # I

    .line 807
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 803
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 794
    const/4 v0, 0x0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 811
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->mMenuItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 812
    return-void
.end method

.method public close()V
    .locals 0

    .line 816
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 3
    .param p1, "id"    # I

    .line 819
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->mMenuItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 820
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 821
    return-object v1

    .line 823
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_0
    goto :goto_0

    .line 824
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "index"    # I

    .line 828
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->mMenuItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 1

    .line 832
    const/4 v0, 0x0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 836
    const/4 v0, 0x0

    return v0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 840
    const/4 v0, 0x0

    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .line 844
    const/4 v0, 0x0

    return v0
.end method

.method public removeGroup(I)V
    .locals 0
    .param p1, "groupId"    # I

    .line 848
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->clear()V

    .line 849
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "id"    # I

    .line 852
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->mMenuItemList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 853
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 0
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .line 858
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 0
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .line 862
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 0
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .line 866
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0
    .param p1, "isQwerty"    # Z

    .line 870
    return-void
.end method

.method public size()I
    .locals 1

    .line 873
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->mMenuItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
