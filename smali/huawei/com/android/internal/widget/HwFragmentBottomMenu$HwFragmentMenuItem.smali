.class public Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;
.super Ljava/lang/Object;
.source "HwFragmentBottomMenu.java"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HwFragmentMenuItem"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

.field private mIsCheckable:Z

.field private mIsChecked:Z

.field private mIsEnabled:Z

.field private mIsVisiable:Z

.field private mItemId:I

.field private mShowAsAction:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsVisiable:Z

    .line 887
    const/4 v1, 0x0

    iput-boolean v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsChecked:Z

    .line 888
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsEnabled:Z

    .line 889
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsCheckable:Z

    .line 893
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "itemId"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsVisiable:Z

    .line 887
    const/4 v1, 0x0

    iput-boolean v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsChecked:Z

    .line 888
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsEnabled:Z

    .line 889
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsCheckable:Z

    .line 897
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mContext:Landroid/content/Context;

    .line 898
    iput p2, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mItemId:I

    .line 899
    iput-object p3, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 900
    return-void
.end method

.method private initFragmentMenuItemView()V
    .locals 3

    .line 903
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    if-nez v0, :cond_0

    .line 904
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mContext:Landroid/content/Context;

    const v1, 0x2070022

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    .line 905
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    iget v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mItemId:I

    invoke-virtual {v0, v1}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setId(I)V

    .line 906
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setClickable(Z)V

    .line 908
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setFocusable(Z)V

    .line 909
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setActivated(Z)V

    .line 911
    :cond_0
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .line 914
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .line 918
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .line 922
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .line 926
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 930
    const/4 v0, 0x0

    return v0
.end method

.method public getFragmentMenuItemView()Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;
    .locals 1

    .line 1102
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->initFragmentMenuItemView()V

    .line 1103
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .line 934
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 938
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 940
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 944
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .line 948
    iget v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mItemId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 952
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 956
    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 960
    const/4 v0, 0x0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .line 964
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 968
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 972
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .line 980
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .line 984
    iget-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsCheckable:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 988
    iget-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsChecked:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 992
    iget-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 996
    iget-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsVisiable:Z

    return v0
.end method

.method public requiresActionButton()Z
    .locals 2

    .line 1107
    iget v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mShowAsAction:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "arg0"    # Landroid/view/ActionProvider;

    .line 1000
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "resId"    # I

    .line 1008
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .line 1004
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .param p1, "alphaChar"    # C

    .line 1012
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 0
    .param p1, "checkable"    # Z

    .line 1016
    iput-boolean p1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsCheckable:Z

    .line 1017
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 0
    .param p1, "checked"    # Z

    .line 1021
    iput-boolean p1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsChecked:Z

    .line 1022
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "enabled"    # Z

    .line 1026
    iput-boolean p1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsEnabled:Z

    .line 1028
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setClickable(Z)V

    .line 1030
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setFocusable(Z)V

    .line 1031
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setActivated(Z)V

    .line 1033
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconRes"    # I

    .line 1043
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->initFragmentMenuItemView()V

    .line 1044
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setIcon(I)V

    .line 1045
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1037
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->initFragmentMenuItemView()V

    .line 1038
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1039
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1049
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setMenuTitleVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1111
    if-nez p1, :cond_0

    .line 1112
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    :cond_0
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .param p1, "numericChar"    # C

    .line 1053
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .line 1057
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1062
    const/4 v0, 0x0

    return-object v0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .line 1066
    const/4 v0, 0x0

    return-object v0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .param p1, "actionEnum"    # I

    .line 1070
    iput p1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mShowAsAction:I

    .line 1071
    if-lez p1, :cond_0

    .line 1072
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->initFragmentMenuItemView()V

    .line 1074
    :cond_0
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "actionEnum"    # I

    .line 1077
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .line 1089
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1081
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 1082
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mFragmentMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1093
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 0
    .param p1, "visible"    # Z

    .line 1097
    iput-boolean p1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->mIsVisiable:Z

    .line 1098
    return-object p0
.end method
