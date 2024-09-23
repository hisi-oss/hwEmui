.class public final Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;
.super Ljava/lang/Object;
.source "HwLocalePickerWithRegionEx.java"

# interfaces
.implements Lcom/huawei/android/app/IHwLocalePickerWithRegionEx;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$DialogListener;,
        Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$SetLanguageDialogListener;
    }
.end annotation


# instance fields
.field mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/IHwLocalePickerWithRegionInner;)V
    .locals 1
    .param p1, "lpw"    # Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    .line 58
    iput-object p1, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    .line 59
    return-void
.end method


# virtual methods
.method public chooseLanguageOrRegion(ZLandroid/content/Context;Lcom/android/internal/app/LocaleStore$LocaleInfo;IZ)V
    .locals 19
    .param p1, "isClickable"    # Z
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "locale"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p4, "position"    # I
    .param p5, "mIsLanguageSelect"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 63
    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 64
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 65
    .local v5, "localeList":Landroid/os/LocaleList;
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v6

    add-int/2addr v6, v3

    move/from16 v7, p4

    if-ge v7, v6, :cond_1

    .line 66
    return-void

    .line 69
    .end local v5    # "localeList":Landroid/os/LocaleList;
    :cond_0
    move/from16 v7, p4

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 70
    .local v5, "defaultLocale":Ljava/util/Locale;
    if-eqz p5, :cond_3

    .line 71
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwLocaleStoreEx()Lcom/huawei/android/app/IHwLocaleStoreEx;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v1, v9, v10}, Lcom/huawei/android/app/IHwLocaleStoreEx;->isSupportRegion(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v8

    .line 72
    .local v8, "isSupportRegion":Z
    invoke-static {v5}, Lcom/android/internal/app/LocaleHelper;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, "displayCountry":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v10

    .line 74
    .local v10, "currLocale":Ljava/util/Locale;
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwLocaleStoreEx()Lcom/huawei/android/app/IHwLocaleStoreEx;

    move-result-object v11

    invoke-interface {v11, v1, v10, v5}, Lcom/huawei/android/app/IHwLocaleStoreEx;->getFullLanguageName(Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 75
    .local v11, "displayName":Ljava/lang/String;
    const/high16 v12, 0x1040000

    const/4 v13, 0x0

    if-eqz v8, :cond_2

    .line 76
    new-instance v14, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$DialogListener;

    invoke-direct {v14, v0, v2}, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$DialogListener;-><init>(Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 77
    .local v14, "mDialogListener":Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$DialogListener;
    const v15, 0x2020250

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v11, v3, v13

    invoke-virtual {v1, v15, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "changeLanguageDesc":Ljava/lang/String;
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 79
    .local v12, "addLanguage":Ljava/lang/String;
    const v15, 0x20201d8

    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 80
    .local v15, "confirmChange":Ljava/lang/String;
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-direct {v13, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v13, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 82
    move-object/from16 v17, v3

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 83
    .end local v3    # "changeLanguageDesc":Ljava/lang/String;
    .local v17, "changeLanguageDesc":Ljava/lang/String;
    invoke-virtual {v3, v12, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 84
    invoke-virtual {v3, v15, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 86
    .local v3, "tipsDialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 87
    .end local v3    # "tipsDialog":Landroid/app/AlertDialog;
    .end local v12    # "addLanguage":Ljava/lang/String;
    .end local v14    # "mDialogListener":Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$DialogListener;
    .end local v15    # "confirmChange":Ljava/lang/String;
    .end local v17    # "changeLanguageDesc":Ljava/lang/String;
    goto :goto_0

    .line 88
    :cond_2
    new-instance v13, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$SetLanguageDialogListener;

    invoke-direct {v13, v0, v2}, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$SetLanguageDialogListener;-><init>(Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 89
    .local v13, "setLanguageListener":Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$SetLanguageDialogListener;
    const v14, 0x202024f

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    aput-object v11, v15, v3

    invoke-virtual {v1, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "desc":Ljava/lang/String;
    const v14, 0x20201d9

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 91
    .local v14, "changeRegion":Ljava/lang/String;
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 92
    .restart local v12    # "addLanguage":Ljava/lang/String;
    const v15, 0x2020251

    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 93
    .local v15, "languageSet":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v4, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 95
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 97
    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v14, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 100
    .local v1, "setLanguageDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 102
    .end local v1    # "setLanguageDialog":Landroid/app/AlertDialog;
    .end local v3    # "desc":Ljava/lang/String;
    .end local v8    # "isSupportRegion":Z
    .end local v9    # "displayCountry":Ljava/lang/String;
    .end local v10    # "currLocale":Ljava/util/Locale;
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v12    # "addLanguage":Ljava/lang/String;
    .end local v13    # "setLanguageListener":Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$SetLanguageDialogListener;
    .end local v14    # "changeRegion":Ljava/lang/String;
    .end local v15    # "languageSet":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 104
    iget-object v1, v0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->onLocaleSelectedEx(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 105
    iget-object v1, v0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    invoke-interface {v1}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->returnToParentFrameEx()V

    .line 108
    :cond_4
    :goto_1
    return-void
.end method

.method public getDisplayRotate(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "rotate":I
    if-eqz p1, :cond_0

    .line 244
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 245
    .local v1, "wmManager":Landroid/view/WindowManager;
    if-eqz v1, :cond_0

    .line 246
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    return v2

    .line 249
    .end local v1    # "wmManager":Landroid/view/WindowManager;
    :cond_0
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 169
    const v0, 0x20700ac

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->onQueryTextChangeEx(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->onQueryTextSubmitEx(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onViewCreated(Landroid/content/Context;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 178
    const v0, 0x2100180

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    .line 179
    .local v10, "mSearchviewContainer":Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v12

    .line 182
    .local v12, "mLeftPadding":I
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v13

    .line 183
    .local v13, "mRightPadding":I
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v14

    .line 184
    .local v14, "mTopPadding":I
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v15

    .line 185
    .local v15, "mBottomPadding":I
    new-instance v7, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v10

    move v4, v12

    move v5, v14

    move v6, v13

    move-object v11, v7

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;-><init>(Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;Landroid/content/Context;Landroid/widget/LinearLayout;IIII)V

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 205
    const v0, 0x2100008

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 206
    .local v0, "mSearchView":Landroid/widget/SearchView;
    iget-object v1, v8, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    invoke-interface {v1}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->getParentLocaleEx()Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v1

    .line 207
    .local v1, "parentLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-eqz v1, :cond_0

    .line 208
    iget-object v2, v8, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    const v3, 0x20202cc

    invoke-interface {v2, v3}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->getTextEx(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v2, v8, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    const v3, 0x2020277

    invoke-interface {v2, v3}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->getTextEx(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 212
    :goto_0
    invoke-virtual {v0, v8}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 213
    iget-object v2, v8, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    invoke-interface {v2}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->getPreviousSearch()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 214
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 215
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setActivated(Z)V

    .line 216
    iget-object v3, v8, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    invoke-interface {v3}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->getPreviousSearchHadFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 219
    :cond_1
    iget-object v3, v8, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    invoke-interface {v3}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->getPreviousSearch()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 221
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 223
    :goto_1
    iget-object v2, v8, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    invoke-interface {v2, v0}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->setSearchView(Landroid/widget/SearchView;)V

    .line 224
    iget-object v2, v8, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    invoke-interface {v2}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->getListViewEx()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, v8, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    invoke-interface {v3}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->getFirstVisiblePosition()I

    move-result v3

    iget-object v4, v8, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    invoke-interface {v4}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->getTopDistance()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 227
    return-void
.end method
