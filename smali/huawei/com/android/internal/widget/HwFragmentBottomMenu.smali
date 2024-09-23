.class public Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;
.super Landroid/widget/LinearLayout;
.source "HwFragmentBottomMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;,
        Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;,
        Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$ViewHolder;,
        Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$FragmentMenuItemAdapter;,
        Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$OnFragmentMenuListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_GROUP:I = 0x0

.field private static final MARGIN_BETWEEN_BORDER:I = 0x14

.field private static final MARGIN_BETWEEN_MENU:I = 0x4

.field private static final MARGIN_BETWEEN_PARENT:I = 0x0

.field private static final MENUITEM_WIDTH_MAXIMUM:I = 0x3e

.field private static final MENUITEM_WIDTH_MINIMUM:I = 0x2e

.field private static final MENU_HEIGHT_MINIMUM:I = 0x32

.field private static final MENU_TEXT_SIZE:I = 0x9

.field private static final MORE_MENU_TAG:Ljava/lang/String; = "more_menu"

.field private static final POPUPMENU_ITEM_HEIGHT:I = 0x20

.field private static final POPUPMENU_WIDTH_MAXIMUM:I = 0xf0

.field private static final POPUPMENU_WIDTH_MINIMUM:I = 0x88

.field private static final TAG:Ljava/lang/String; = "HwFragmentBottomMenu"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefinedBackground:Landroid/graphics/drawable/Drawable;

.field private mDisplayMenuCount:I

.field private mDisplayMoreMenuCount:I

.field private mFragemntMenuListener:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$OnFragmentMenuListener;

.field private mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mMenuBarHeight:I

.field private mMenuBarWidth:I

.field private mMenuItemWidth:I

.field private mMenuTitleVisible:Z

.field private mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

.field private mMoreMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mParentViewWidth:I

.field private mPopupLayout:Landroid/view/View;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mSetMenuCount:I

.field private mSetMoreMenuCount:I

.field private mTextSize:I

.field private mUsingDefined:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mParentViewWidth:I

    .line 63
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    .line 64
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarHeight:I

    .line 65
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    .line 67
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    .line 68
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMoreMenuCount:I

    .line 70
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    .line 71
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMoreMenuCount:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuTitleVisible:Z

    .line 94
    invoke-direct {p0, p1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->init(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mParentViewWidth:I

    .line 63
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    .line 64
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarHeight:I

    .line 65
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    .line 67
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    .line 68
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMoreMenuCount:I

    .line 70
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    .line 71
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMoreMenuCount:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuTitleVisible:Z

    .line 89
    invoke-direct {p0, p1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->init(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mParentViewWidth:I

    .line 63
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    .line 64
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarHeight:I

    .line 65
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    .line 67
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    .line 68
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMoreMenuCount:I

    .line 70
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    .line 71
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMoreMenuCount:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuTitleVisible:Z

    .line 100
    invoke-direct {p0, p1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->init(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;

    .line 33
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;)Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$OnFragmentMenuListener;
    .locals 1
    .param p0, "x0"    # Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;

    .line 33
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragemntMenuListener:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$OnFragmentMenuListener;

    return-object v0
.end method

.method static synthetic access$200(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;)Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;
    .locals 1
    .param p0, "x0"    # Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;

    .line 33
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    return-object v0
.end method

.method static synthetic access$300(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;

    .line 33
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$400(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;

    .line 33
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dpValue"    # F

    .line 703
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 704
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mContext:Landroid/content/Context;

    .line 105
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 107
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20e001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mTextSize:I

    .line 111
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->initBackgroundResource()V

    .line 112
    return-void
.end method

.method private initBackgroundResource()V
    .locals 1

    .line 248
    iget-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mUsingDefined:Z

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDefinedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->setPadding(IIII)V

    .line 252
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDefinedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/hwcontrol/HwWidgetFactory;->isHwDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    const v0, 0x203023a

    invoke-virtual {p0, v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->setBackgroundResource(I)V

    goto :goto_0

    .line 257
    :cond_2
    const v0, 0x2030239

    invoke-virtual {p0, v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->setBackgroundResource(I)V

    .line 260
    :goto_0
    return-void
.end method

.method private measureHeight(ILandroid/view/View;)I
    .locals 4
    .param p1, "measureSpec"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 227
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 229
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 230
    move v0, v2

    goto :goto_1

    .line 232
    :cond_0
    if-eqz p2, :cond_1

    .line 233
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 235
    :cond_1
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_3

    .line 236
    if-ge v2, v0, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    move v0, v3

    .line 239
    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public addMenu(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZZ)Landroid/view/MenuItem;
    .locals 3
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "visible"    # Z
    .param p6, "checked"    # Z

    .line 545
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    .line 548
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    invoke-virtual {v0, p2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 549
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 550
    invoke-interface {v0, p5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 551
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 552
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 553
    return-object v0

    .line 555
    :cond_1
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, p3}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 556
    invoke-interface {v0, p6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 557
    invoke-interface {v0, p5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 558
    if-eqz p4, :cond_2

    .line 559
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 560
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 562
    :cond_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 564
    :goto_0
    return-object v0
.end method

.method public addMenu(ILjava/lang/CharSequence;I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "itemId"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # I

    .line 525
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->addMenu(ILjava/lang/CharSequence;IZ)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addMenu(ILjava/lang/CharSequence;IZ)Landroid/view/MenuItem;
    .locals 1
    .param p1, "itemId"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # I
    .param p4, "visible"    # Z

    .line 530
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 531
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 530
    invoke-virtual {p0, p1, p2, v0, p4}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->addMenu(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addMenu(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "itemId"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 535
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->addMenu(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addMenu(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)Landroid/view/MenuItem;
    .locals 7
    .param p1, "itemId"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "visible"    # Z

    .line 540
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->addMenu(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZZ)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .line 150
    if-nez p1, :cond_0

    .line 151
    return-void

    .line 152
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    .line 153
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 154
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 155
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 156
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    .line 155
    invoke-virtual {p0, v3, v4, v5, v6}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->addMenu(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)Landroid/view/MenuItem;

    .line 153
    .end local v2    # "item":Landroid/view/MenuItem;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->refreshMenu()V

    .line 159
    return-void
.end method

.method public getFragmentMenu()Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;
    .locals 2

    .line 122
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    .line 124
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 568
    const-string v0, "more_menu"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {p0, p1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->showPopup(Landroid/view/View;)V

    goto :goto_0

    .line 570
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragemntMenuListener:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$OnFragmentMenuListener;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragemntMenuListener:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$OnFragmentMenuListener;

    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$OnFragmentMenuListener;->onFragmentMenuItemClick(Landroid/view/MenuItem;)Z

    .line 573
    :cond_1
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 133
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 138
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 117
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 118
    new-instance v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    .line 119
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object v0, p0

    .line 408
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 416
    iget v1, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    if-nez v1, :cond_0

    .line 417
    return-void

    .line 419
    :cond_0
    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getChildCount()I

    move-result v1

    .line 420
    .local v1, "childCount":I
    iget v2, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    iget v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v2, v3, :cond_8

    .line 421
    iget v2, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMoreMenuCount:I

    if-lez v2, :cond_4

    .line 422
    move v2, v5

    .local v2, "i":I
    :goto_0
    iget v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    if-ge v2, v3, :cond_c

    .line 423
    iget-object v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    invoke-virtual {v3, v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;

    .line 424
    .local v3, "item":Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;
    const-string v4, "more_menu"

    invoke-virtual {v0, v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 425
    goto/16 :goto_5

    .line 427
    :cond_1
    iget v4, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    sub-int/2addr v4, v6

    if-lt v2, v4, :cond_2

    iget v4, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_2

    .line 428
    invoke-virtual {v0, v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v4, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 431
    iget-object v4, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 433
    :cond_2
    invoke-virtual {v0, v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v4, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 436
    iget-object v4, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 422
    .end local v3    # "item":Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    .end local v2    # "i":I
    :cond_4
    iget-object v2, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v2, v5}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setVisibility(I)V

    .line 442
    move v2, v5

    .restart local v2    # "i":I
    :goto_2
    iget v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    if-ge v2, v3, :cond_c

    .line 443
    iget-object v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    invoke-virtual {v3, v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;

    .line 444
    .restart local v3    # "item":Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;
    const-string v7, "more_menu"

    invoke-virtual {v0, v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 445
    goto/16 :goto_5

    .line 447
    :cond_5
    iget v7, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    sub-int/2addr v7, v6

    if-lt v2, v7, :cond_6

    iget v7, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    if-ge v2, v7, :cond_6

    .line 448
    invoke-virtual {v0, v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object v7, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 451
    iget-object v7, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    invoke-interface {v7, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 453
    :cond_6
    invoke-virtual {v0, v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v7, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 456
    iget-object v7, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 442
    .end local v3    # "item":Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 461
    .end local v2    # "i":I
    :cond_8
    iget v2, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    iget v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    if-ne v2, v3, :cond_c

    .line 462
    iget v2, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMoreMenuCount:I

    if-nez v2, :cond_9

    .line 463
    iget-object v2, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v2, v4}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setVisibility(I)V

    .line 466
    :cond_9
    move v2, v5

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v1, :cond_c

    .line 467
    invoke-virtual {v0, v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_b

    .line 468
    invoke-virtual {v0, v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 469
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    if-eqz v4, :cond_b

    .line 470
    iget-object v4, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v4, v7}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;

    .line 471
    .local v4, "item":Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;
    iget-object v7, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 472
    iget-object v7, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 474
    :cond_a
    const-string v7, "more_menu"

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 475
    invoke-virtual {v0, v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 466
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "item":Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 487
    .end local v2    # "i":I
    :cond_c
    :goto_5
    const/4 v2, 0x0

    .line 488
    .local v2, "count":I
    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getLayoutDirection()I

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v7, 0x2

    const/high16 v8, 0x41a00000    # 20.0f

    if-ne v6, v3, :cond_f

    .line 489
    nop

    .local v5, "i":I
    :goto_6
    move v3, v5

    .end local v5    # "i":I
    .local v3, "i":I
    if-ge v3, v1, :cond_12

    .line 490
    invoke-virtual {v0, v3}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 491
    .local v5, "childView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_e

    instance-of v9, v5, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    if-nez v9, :cond_d

    .line 493
    goto :goto_7

    .line 495
    :cond_d
    invoke-direct {v0, v8}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v9

    iget v10, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    sub-int/2addr v10, v6

    sub-int/2addr v10, v2

    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    rem-int/2addr v10, v11

    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iget v10, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    sub-int/2addr v10, v6

    sub-int/2addr v10, v2

    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    rem-int/2addr v10, v11

    mul-int/2addr v10, v7

    add-int/2addr v10, v6

    .line 498
    invoke-direct {v0, v4}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v11

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getPaddingTop()I

    move-result v10

    .line 499
    invoke-direct {v0, v8}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v11

    iget v12, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    sub-int/2addr v12, v6

    sub-int/2addr v12, v2

    iget v13, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    rem-int/2addr v12, v13

    add-int/2addr v12, v6

    iget v13, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    iget v12, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    sub-int/2addr v12, v6

    sub-int/2addr v12, v2

    iget v13, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    rem-int/2addr v12, v13

    mul-int/2addr v12, v7

    add-int/2addr v12, v6

    .line 502
    invoke-direct {v0, v4}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v13

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getHeight()I

    move-result v12

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getPaddingTop()I

    move-result v13

    add-int/2addr v12, v13

    .line 495
    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 503
    add-int/lit8 v2, v2, 0x1

    .line 489
    .end local v5    # "childView":Landroid/view/View;
    :cond_e
    :goto_7
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    goto :goto_6

    .line 506
    .end local v5    # "i":I
    :cond_f
    nop

    .restart local v5    # "i":I
    :goto_8
    move v3, v5

    .end local v5    # "i":I
    .restart local v3    # "i":I
    if-ge v3, v1, :cond_12

    .line 507
    invoke-virtual {v0, v3}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 508
    .local v5, "childView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_11

    instance-of v9, v5, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    if-nez v9, :cond_10

    .line 510
    goto :goto_9

    .line 511
    :cond_10
    invoke-direct {v0, v8}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v9

    iget v10, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    rem-int v10, v2, v10

    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iget v10, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    rem-int v10, v2, v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v6

    .line 514
    invoke-direct {v0, v4}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v11

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getPaddingTop()I

    move-result v10

    .line 515
    invoke-direct {v0, v8}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v11

    iget v12, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    rem-int v12, v2, v12

    add-int/2addr v12, v6

    iget v13, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    iget v12, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    rem-int v12, v2, v12

    mul-int/2addr v12, v7

    add-int/2addr v12, v6

    .line 518
    invoke-direct {v0, v4}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v13

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getHeight()I

    move-result v12

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getPaddingTop()I

    move-result v13

    add-int/2addr v12, v13

    .line 511
    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 519
    add-int/lit8 v2, v2, 0x1

    .line 506
    .end local v5    # "childView":Landroid/view/View;
    :cond_11
    :goto_9
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    goto :goto_8

    .line 522
    .end local v5    # "i":I
    :cond_12
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 265
    move/from16 v1, p2

    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getChildCount()I

    move-result v2

    .line 268
    .local v2, "childCount":I
    if-nez v2, :cond_0

    .line 269
    return-void

    .line 271
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 272
    .local v4, "view":Landroid/view/View;
    move/from16 v5, p1

    invoke-virtual {v4, v5, v1}, Landroid/view/View;->measure(II)V

    .line 273
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 274
    .local v6, "sizeWidth":I
    invoke-direct {v0, v1, v4}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->measureHeight(ILandroid/view/View;)I

    move-result v7

    .line 275
    .local v7, "measureHeight":I
    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct {v0, v8}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v9

    .line 276
    .local v9, "minHeight":I
    if-le v7, v9, :cond_1

    move v10, v7

    goto :goto_0

    :cond_1
    move v10, v9

    .line 277
    .local v10, "sizeHeight":I
    :goto_0
    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarHeight:I

    if-le v10, v11, :cond_2

    .line 278
    iput v10, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarHeight:I

    .line 280
    :cond_2
    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    if-ne v6, v11, :cond_3

    .line 281
    invoke-virtual/range {p0 .. p2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->measureChildren(II)V

    .line 282
    iget v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    iget v8, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarHeight:I

    invoke-virtual {v0, v3, v8}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->setMeasuredDimension(II)V

    .line 283
    return-void

    .line 292
    :cond_3
    iput v6, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mParentViewWidth:I

    .line 294
    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    iput v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    .line 295
    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMoreMenuCount:I

    iput v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMoreMenuCount:I

    .line 297
    const/high16 v11, 0x42780000    # 62.0f

    invoke-direct {v0, v11}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v12

    iput v12, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    .line 298
    const/high16 v12, 0x428c0000    # 70.0f

    invoke-direct {v0, v12}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v12

    iget v13, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    mul-int/2addr v12, v13

    const/high16 v13, 0x42200000    # 40.0f

    invoke-direct {v0, v13}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    .line 300
    iget v12, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    const/4 v14, 0x0

    invoke-direct {v0, v14}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v15

    add-int/2addr v12, v15

    const/4 v15, 0x2

    if-le v12, v6, :cond_9

    .line 301
    const/high16 v12, 0x42580000    # 54.0f

    invoke-direct {v0, v12}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v16

    iget v8, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    mul-int v16, v16, v8

    invoke-direct {v0, v13}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v8

    add-int v8, v16, v8

    iput v8, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    .line 303
    iget v8, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    invoke-direct {v0, v14}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v16

    add-int v8, v8, v16

    const/high16 v11, 0x41000000    # 8.0f

    if-gt v8, v6, :cond_4

    .line 304
    invoke-direct {v0, v14}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v8

    sub-int v8, v6, v8

    iput v8, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    .line 305
    iget v8, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    invoke-direct {v0, v13}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v12

    sub-int/2addr v8, v12

    iget v12, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    div-int/2addr v8, v12

    invoke-direct {v0, v11}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v11

    sub-int/2addr v8, v11

    iput v8, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    goto/16 :goto_3

    .line 307
    :cond_4
    invoke-direct {v0, v13}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v8

    sub-int v8, v6, v8

    invoke-direct {v0, v12}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v12

    div-int/2addr v8, v12

    .line 311
    .local v8, "maxcount":I
    const/4 v12, 0x1

    if-nez v8, :cond_6

    .line 312
    iput v12, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    .line 314
    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMoreMenuCount:I

    if-nez v11, :cond_5

    .line 315
    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    iput v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMoreMenuCount:I

    goto :goto_1

    .line 317
    :cond_5
    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    iget v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMoreMenuCount:I

    add-int/2addr v11, v3

    sub-int/2addr v11, v12

    iput v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMoreMenuCount:I

    .line 319
    :goto_1
    invoke-direct {v0, v14}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v3

    mul-int/2addr v3, v15

    sub-int v3, v6, v3

    iput v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    .line 320
    iget v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    invoke-direct {v0, v13}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v11

    sub-int/2addr v3, v11

    iput v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    .line 321
    iget v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    if-gez v3, :cond_9

    .line 322
    const/4 v3, 0x0

    iput v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    goto :goto_3

    .line 324
    :cond_6
    iput v8, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    .line 326
    invoke-direct {v0, v13}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v3

    sub-int v3, v6, v3

    div-int/2addr v3, v8

    invoke-direct {v0, v11}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v16

    sub-int v3, v3, v16

    .line 331
    .local v3, "maxMenuSize":I
    const/high16 v12, 0x42780000    # 62.0f

    invoke-direct {v0, v12}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v11

    if-le v3, v11, :cond_7

    .line 332
    const/high16 v11, 0x42840000    # 66.0f

    invoke-direct {v0, v11}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v11

    mul-int/2addr v11, v8

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-direct {v0, v12}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v12

    mul-int/2addr v12, v15

    add-int/2addr v11, v12

    iput v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    .line 333
    const/high16 v11, 0x42780000    # 62.0f

    invoke-direct {v0, v11}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v11

    iput v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    goto :goto_2

    .line 335
    :cond_7
    invoke-direct {v0, v14}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v11

    sub-int v11, v6, v11

    iput v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    .line 336
    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    invoke-direct {v0, v13}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    div-int/2addr v11, v12

    const/high16 v12, 0x41000000    # 8.0f

    invoke-direct {v0, v12}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    .line 338
    :goto_2
    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMoreMenuCount:I

    if-nez v11, :cond_8

    .line 339
    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    sub-int/2addr v11, v8

    iput v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMoreMenuCount:I

    goto :goto_3

    .line 341
    :cond_8
    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    iget v12, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMoreMenuCount:I

    add-int/2addr v11, v12

    sub-int/2addr v11, v8

    iput v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMoreMenuCount:I

    .line 347
    .end local v3    # "maxMenuSize":I
    .end local v8    # "maxcount":I
    :cond_9
    :goto_3
    iget-object v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    if-eqz v3, :cond_a

    .line 348
    iget-object v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    iget v8, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    invoke-virtual {v3, v8}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setWidth(I)V

    .line 350
    iget-object v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setSingleLine(Z)V

    .line 351
    iget-object v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v3, v15}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setMaxLines(I)V

    .line 352
    iget-object v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v11}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 354
    iget-object v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v3, v8, v8}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->measure(II)V

    .line 357
    :cond_a
    iget-boolean v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuTitleVisible:Z

    if-eqz v3, :cond_11

    .line 358
    iget v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    .line 359
    .local v3, "displayMenuCount":I
    const/4 v8, 0x0

    .line 360
    .local v8, "isTwoLines":Z
    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMoreMenuCount:I

    if-lez v11, :cond_c

    .line 361
    add-int/lit8 v3, v3, -0x1

    .line 363
    iget-object v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    if-eqz v11, :cond_c

    .line 364
    iget-object v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    iget v12, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    invoke-virtual {v11, v12}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setWidth(I)V

    .line 365
    iget-boolean v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuTitleVisible:Z

    if-eqz v11, :cond_b

    .line 366
    iget-object v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v11}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    iget-object v12, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v12}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 367
    .local v11, "textlength":F
    iget v12, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    int-to-float v12, v12

    cmpl-float v12, v11, v12

    if-lez v12, :cond_b

    .line 368
    const/4 v8, 0x1

    .line 371
    .end local v11    # "textlength":F
    :cond_b
    iget-object v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setSingleLine(Z)V

    .line 372
    iget-object v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v11, v15}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setMaxLines(I)V

    .line 373
    iget-object v11, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v11, v12}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 377
    :cond_c
    move v11, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .local v11, "isTwoLines":Z
    :goto_4
    if-ge v8, v3, :cond_f

    .line 378
    invoke-virtual {v0, v8}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 379
    .local v12, "childView":Landroid/view/View;
    instance-of v13, v12, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    if-eqz v13, :cond_e

    .line 380
    move-object v13, v12

    check-cast v13, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    .line 381
    .local v13, "menuItemView":Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;
    iget v14, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    invoke-virtual {v13, v14}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setWidth(I)V

    .line 382
    iget-boolean v14, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuTitleVisible:Z

    if-eqz v14, :cond_d

    .line 383
    invoke-virtual {v13}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-virtual {v13}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 384
    .local v14, "textlength":F
    iget v15, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuItemWidth:I

    int-to-float v15, v15

    cmpl-float v15, v14, v15

    if-lez v15, :cond_d

    .line 385
    const/4 v11, 0x1

    .line 387
    .end local v14    # "textlength":F
    :cond_d
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setSingleLine(Z)V

    .line 388
    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setMaxLines(I)V

    .line 389
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v13, v14}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 377
    .end local v12    # "childView":Landroid/view/View;
    .end local v13    # "menuItemView":Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 392
    .end local v8    # "i":I
    :cond_f
    if-eqz v11, :cond_10

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct {v0, v8}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v8

    iget v12, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mTextSize:I

    add-int/2addr v8, v12

    goto :goto_5

    :cond_10
    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct {v0, v8}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v8

    :goto_5
    iput v8, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarHeight:I

    .line 402
    .end local v3    # "displayMenuCount":I
    .end local v11    # "isTwoLines":Z
    :cond_11
    iget v3, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarWidth:I

    iget v8, v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuBarHeight:I

    invoke-virtual {v0, v3, v8}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->setMeasuredDimension(II)V

    .line 403
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 142
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 143
    if-eqz p1, :cond_0

    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 144
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 147
    :cond_0
    return-void
.end method

.method public refreshMenu()V
    .locals 7

    .line 162
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->removeAllViews()V

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    .line 165
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMoreMenuCount:I

    .line 166
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 168
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    invoke-virtual {v1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->size()I

    move-result v1

    .line 169
    .local v1, "size":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v1, :cond_3

    .line 170
    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    invoke-virtual {v5, v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;

    .line 171
    .local v5, "item":Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;
    invoke-virtual {v5}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->isVisible()Z

    move-result v6

    if-nez v6, :cond_0

    .line 172
    goto :goto_2

    .line 175
    :cond_0
    iget-boolean v6, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuTitleVisible:Z

    invoke-virtual {v5, v6}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->setMenuTitleVisible(Z)V

    .line 176
    invoke-virtual {v5, v4}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 177
    invoke-virtual {v5}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 178
    invoke-virtual {v5, v3}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {v5, v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->setShowAsAction(I)V

    .line 183
    :goto_1
    invoke-virtual {v5}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->requiresActionButton()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    invoke-virtual {v5}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->getFragmentMenuItemView()Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    move-result-object v3

    .line 185
    .local v3, "itemView":Landroid/view/View;
    invoke-virtual {p0, v3}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->addView(Landroid/view/View;)V

    .line 186
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget v6, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    add-int/2addr v6, v4

    iput v6, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    .line 189
    .end local v3    # "itemView":Landroid/view/View;
    goto :goto_2

    .line 190
    :cond_2
    iget v3, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMoreMenuCount:I

    add-int/2addr v3, v4

    iput v3, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMoreMenuCount:I

    .line 191
    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v5    # "item":Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    if-nez v2, :cond_5

    .line 196
    nop

    .line 197
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x2070022

    const/4 v6, 0x0

    .line 196
    invoke-static {v2, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    iput-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    .line 198
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    const-string v5, "more_menu"

    invoke-virtual {v2, v5}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setTag(Ljava/lang/Object;)V

    .line 199
    iget-boolean v2, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuTitleVisible:Z

    if-eqz v2, :cond_4

    .line 200
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    const v5, 0x202002d

    invoke-virtual {v2, v5}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setText(I)V

    .line 202
    :cond_4
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mContext:Landroid/content/Context;

    const v5, 0x2030029

    invoke-virtual {v2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 203
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v5, v2}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v5, p0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v5, v0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setSingleLine(Z)V

    .line 207
    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v5, v3}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setMaxLines(I)V

    .line 208
    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 210
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {p0, v2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->addView(Landroid/view/View;)V

    .line 212
    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMoreMenuCount:I

    if-lez v2, :cond_6

    .line 213
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    invoke-virtual {v2, v0}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setVisibility(I)V

    .line 214
    iget v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    goto :goto_3

    .line 216
    :cond_6
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuItemView:Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lhuawei/com/android/internal/widget/HwFragmentMenuItemView;->setVisibility(I)V

    .line 222
    :goto_3
    return-void
.end method

.method public setDefinedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mUsingDefined:Z

    .line 244
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDefinedBackground:Landroid/graphics/drawable/Drawable;

    .line 245
    return-void
.end method

.method public setFragmentMenu(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;)V
    .locals 0
    .param p1, "mFragmentMenu"    # Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    .line 128
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    .line 129
    return-void
.end method

.method public setMenuItemVisible(IZ)V
    .locals 3
    .param p1, "itemId"    # I
    .param p2, "visible"    # Z

    .line 652
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    if-nez v0, :cond_0

    .line 653
    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;

    .line 655
    .local v0, "item":Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;
    if-nez v0, :cond_1

    .line 656
    return-void

    .line 657
    :cond_1
    invoke-virtual {v0, p2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 659
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->refreshMenu()V

    .line 660
    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->requiresActionButton()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 661
    iget v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mSetMenuCount:I

    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mDisplayMenuCount:I

    if-ge v1, v2, :cond_2

    .line 662
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->measure(II)V

    .line 665
    :cond_2
    return-void
.end method

.method public setMenuTitleVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 699
    iput-boolean p1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuTitleVisible:Z

    .line 700
    return-void
.end method

.method public setOnFragmentMenuListener(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$OnFragmentMenuListener;)V
    .locals 0
    .param p1, "fragemntMenuListener"    # Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$OnFragmentMenuListener;

    .line 713
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragemntMenuListener:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$OnFragmentMenuListener;

    .line 714
    return-void
.end method

.method public showPopup(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 581
    :cond_0
    new-instance v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$FragmentMenuItemAdapter;

    .line 582
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x2070023

    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$FragmentMenuItemAdapter;-><init>(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;Landroid/content/Context;ILjava/util/List;)V

    .line 584
    .local v0, "adapter":Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$FragmentMenuItemAdapter;
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupLayout:Landroid/view/View;

    if-nez v1, :cond_1

    .line 585
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x2070024

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupLayout:Landroid/view/View;

    .line 586
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupLayout:Landroid/view/View;

    const v2, 0x210004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mListView:Landroid/widget/ListView;

    .line 587
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupLayout:Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 589
    :cond_1
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 591
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mListView:Landroid/widget/ListView;

    new-instance v2, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$1;

    invoke-direct {v2, p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$1;-><init>(Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 608
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 609
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 611
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2030233

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 614
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 615
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 617
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 618
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 621
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 622
    .local v1, "popupWidth":I
    const-string v4, "HwFragmentBottomMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "popupWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x43080000    # 136.0f

    invoke-direct {p0, v6}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v7, 0x43700000    # 240.0f

    invoke-direct {p0, v7}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-direct {p0, v6}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 624
    invoke-direct {p0, v6}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v1

    goto :goto_0

    .line 625
    :cond_2
    invoke-direct {p0, v7}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v4

    if-le v1, v4, :cond_3

    .line 626
    invoke-direct {p0, v7}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v1

    .line 628
    :cond_3
    :goto_0
    iget v4, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mParentViewWidth:I

    if-le v1, v4, :cond_5

    .line 629
    invoke-direct {p0, v6}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v4

    .line 630
    .local v4, "minMenuWidth":I
    iget v5, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mParentViewWidth:I

    if-le v5, v4, :cond_4

    iget v5, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mParentViewWidth:I

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_1
    move v1, v5

    .line 632
    .end local v4    # "minMenuWidth":I
    :cond_5
    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 634
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 635
    .local v5, "location":[I
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 637
    aget v6, v5, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 638
    const/high16 v7, 0x41c00000    # 24.0f

    invoke-direct {p0, v7}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v8

    add-int/2addr v6, v8

    sub-int/2addr v6, v1

    .line 640
    .local v6, "xPos":I
    const-string v8, "HwFragmentBottomMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "location = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getLayoutDirection()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getLayoutDirection()I

    move-result v8

    if-ne v2, v8, :cond_6

    .line 642
    aget v8, v5, v3

    .line 643
    invoke-direct {p0, v7}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v7

    sub-int v6, v8, v7

    .line 646
    :cond_6
    aget v2, v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/2addr v7, v4

    add-int/2addr v2, v7

    const/high16 v4, 0x42000000    # 32.0f

    .line 647
    invoke-direct {p0, v4}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->dip2px(F)I

    move-result v4

    iget-object v7, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMoreMenuList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int/2addr v4, v7

    sub-int/2addr v2, v4

    .line 648
    .local v2, "yPos":I
    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, p1, v3, v6, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 649
    return-void

    .line 578
    .end local v0    # "adapter":Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$FragmentMenuItemAdapter;
    .end local v1    # "popupWidth":I
    .end local v2    # "yPos":I
    .end local v5    # "location":[I
    .end local v6    # "xPos":I
    :cond_7
    :goto_2
    return-void
.end method

.method public updateMenuItem(III)V
    .locals 2
    .param p1, "itemId"    # I
    .param p2, "titleId"    # I
    .param p3, "iconId"    # I

    .line 668
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    if-nez v0, :cond_0

    .line 669
    return-void

    .line 671
    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 672
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    nop

    .line 673
    .local v0, "title":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0, p1, v0, v1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->updateMenuItem(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 674
    return-void
.end method

.method public updateMenuItem(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "itemId"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 677
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    if-nez v0, :cond_0

    .line 678
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mFragmentMenu:Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;

    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;

    .line 681
    .local v0, "item":Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;
    if-nez v0, :cond_1

    .line 682
    return-void

    .line 684
    :cond_1
    if-eqz p3, :cond_2

    .line 685
    invoke-virtual {v0, p3}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 686
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->setShowAsAction(I)V

    .line 689
    :cond_2
    if-eqz p2, :cond_4

    .line 690
    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu;->mMenuTitleVisible:Z

    if-eqz v1, :cond_3

    .line 691
    invoke-virtual {v0, p2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 692
    :cond_3
    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->requiresActionButton()Z

    move-result v1

    if-nez v1, :cond_4

    .line 693
    invoke-virtual {v0, p2}, Lhuawei/com/android/internal/widget/HwFragmentBottomMenu$HwFragmentMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 696
    :cond_4
    :goto_0
    return-void
.end method
