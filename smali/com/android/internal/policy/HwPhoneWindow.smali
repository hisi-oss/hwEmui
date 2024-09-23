.class public Lcom/android/internal/policy/HwPhoneWindow;
.super Lcom/android/internal/policy/PhoneWindow;
.source "HwPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/HwPhoneWindow$Utils;
    }
.end annotation


# static fields
.field private static final FLOATING_MASK:I = -0x80000000

.field protected static final IS_NOTCH_PROP:Z

.field static final TAG:Ljava/lang/String; = "HwPhoneWindow"


# instance fields
.field public mForceDisableBlurBehind:Z

.field private mHwDrawerFeature:Z

.field private mHwFloating:Z

.field private mHwOverlayActionBar:I

.field private mIsTranslucentImmersion:Z

.field private mNavBarShow:Z

.field private mSplitMode:Z

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    const-string v0, "ro.config.hw_notch_size"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/HwPhoneWindow;->IS_NOTCH_PROP:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mNavBarShow:Z

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mForceDisableBlurBehind:Z

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preservedWindow"    # Landroid/view/Window;
    .param p3, "activityConfigCallback"    # Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mNavBarShow:Z

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mForceDisableBlurBehind:Z

    .line 100
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Landroid/util/HwPCUtils;->isValidExtDisplayId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iput-boolean v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mUseDecorContext:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HwPhoneWindow"

    const-string v2, "HwPhoneWindow isValidExtDisplayId error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 104
    :catch_1
    move-exception v0

    .line 105
    .local v0, "error":Ljava/lang/NoSuchMethodError;
    const-string v1, "HwPhoneWindow"

    const-string v2, "HwPhoneWindow isValidExtDisplayId NoSuchMethodError"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v0    # "error":Ljava/lang/NoSuchMethodError;
    :cond_0
    :goto_0
    nop

    .line 111
    :goto_1
    return-void
.end method

.method private getEmuiValue(I)I
    .locals 1
    .param p1, "emuiValue"    # I

    .line 246
    iget-boolean v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mIsFloating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mHwFloating:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->windowIsTranslucent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->isTranslucentImmersion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    :cond_0
    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    .line 249
    :cond_1
    return p1
.end method

.method private initChildWindowIgnoreParentWindowClipRect()V
    .locals 5

    .line 403
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidhwext/R$styleable;->Window:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 405
    .local v0, "ahwext":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 407
    .local v1, "ignore":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 410
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v1, :cond_0

    .line 411
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 413
    :cond_0
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v4, -0x40000001    # -1.9999999f

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 415
    :goto_0
    return-void
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .line 493
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private updateBlurStatus()V
    .locals 6

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 370
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    nop

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "HwPhoneWindow"

    .line 370
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x2010018

    invoke-static {v1, v4, v5, v3, v2}, Lhuawei/android/utils/HwRTBlurUtils;->obtainBlurStyle(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;)Lhuawei/android/utils/HwRTBlurUtils$BlurParams;

    move-result-object v1

    .line 382
    .local v1, "blurParams":Lhuawei/android/utils/HwRTBlurUtils$BlurParams;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/util/HwPCUtils;->isValidExtDisplayId(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.packageinstaller"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    return-void

    .line 388
    :catch_0
    move-exception v2

    .line 389
    .local v2, "error":Ljava/lang/NoSuchMethodError;
    const-string v4, "HwPhoneWindow"

    const-string v5, "HwPhoneWindow isValidExtDisplayId NoSuchMethodError"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "error":Ljava/lang/NoSuchMethodError;
    goto :goto_0

    .line 390
    :cond_0
    nop

    .line 395
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/HwPhoneWindow;->mForceDisableBlurBehind:Z

    if-eqz v2, :cond_1

    iput-boolean v3, v1, Lhuawei/android/utils/HwRTBlurUtils$BlurParams;->enable:Z

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lhuawei/android/utils/HwRTBlurUtils;->updateWindowBgForBlur(Lhuawei/android/utils/HwRTBlurUtils$BlurParams;Landroid/view/View;)V

    .line 399
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1}, Lhuawei/android/utils/HwRTBlurUtils;->updateBlurStatus(Landroid/view/WindowManager$LayoutParams;Lhuawei/android/utils/HwRTBlurUtils$BlurParams;)V

    .line 400
    return-void
.end method


# virtual methods
.method protected CheckPermanentMenuKey()Z
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->isEmuiStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x1

    return v0

    .line 177
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/PhoneWindow;->CheckPermanentMenuKey()Z

    move-result v0

    return v0
.end method

.method public forceDisableBlurBehind()V
    .locals 1

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mForceDisableBlurBehind:Z

    .line 365
    return-void
.end method

.method public getAppToken()Landroid/os/IBinder;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method protected getEmuiActionBarLayout(I)I
    .locals 0
    .param p1, "layoutResource"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    return p1
.end method

.method protected getFloatingToolbar(Landroid/view/Window;)Lcom/android/internal/widget/FloatingToolbar;
    .locals 2
    .param p1, "window"    # Landroid/view/Window;

    .line 303
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/view/Window;Z)V

    return-object v0
.end method

.method protected getHeightMeasureSpec(III)I
    .locals 5
    .param p1, "fixh"    # I
    .param p2, "heightSize"    # I
    .param p3, "defaultHeightMeasureSpec"    # I

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->isEmuiStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 130
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 137
    .local v1, "isLandscape":Z
    :goto_0
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge p1, v2, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 140
    .local v2, "statusBarHeight":I
    int-to-float v3, p1

    const/4 v4, 0x0

    add-float/2addr v3, v4

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 141
    .local v3, "factor":F
    int-to-float v4, v2

    mul-float/2addr v4, v3

    float-to-int v4, v4

    sub-int/2addr p1, v4

    .line 144
    .end local v2    # "statusBarHeight":I
    .end local v3    # "factor":F
    :cond_1
    const/4 v2, 0x0

    .line 147
    .local v2, "heightMeasureSpec":I
    if-ge p1, p2, :cond_2

    move v3, p1

    goto :goto_1

    :cond_2
    move v3, p2

    :goto_1
    const/high16 v4, -0x80000000

    .line 145
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 151
    return v2

    .line 153
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .end local v1    # "isLandscape":Z
    .end local v2    # "heightMeasureSpec":I
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow;->getHeightMeasureSpec(III)I

    move-result v0

    return v0
.end method

.method public getHwFloating()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mHwFloating:Z

    return v0
.end method

.method public getStatusBarColor()I
    .locals 1

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/hwcontrol/HwWidgetFactory;->isHwLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getIsForcedStatusBarColor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/hwcontrol/HwWidgetFactory;->getPrimaryColor(Landroid/content/Context;)I

    move-result v0

    return v0

    .line 295
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/PhoneWindow;->getStatusBarColor()I

    move-result v0

    return v0
.end method

.method protected getTryForcedCloseAnimation(Landroid/view/IWindowManager;ZLjava/lang/Object;)Z
    .locals 2
    .param p1, "wm"    # Landroid/view/IWindowManager;
    .param p2, "animate"    # Z
    .param p3, "tag"    # Ljava/lang/Object;

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "forceCloseAnimation":Z
    if-eqz p2, :cond_0

    const-string v1, "TryForcedCloseAnimation"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    const/4 v0, 0x1

    .line 287
    :cond_0
    return v0
.end method

.method protected initHwDrawerFeature()V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    instance-of v0, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    check-cast v0, Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 433
    .local v0, "abol":Lcom/android/internal/widget/ActionBarOverlayLayout;
    iget-boolean v1, p0, Lcom/android/internal/policy/HwPhoneWindow;->mHwDrawerFeature:Z

    iget v2, p0, Lcom/android/internal/policy/HwPhoneWindow;->mHwOverlayActionBar:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHwDrawerFeature(ZI)V

    .line 435
    .end local v0    # "abol":Lcom/android/internal/widget/ActionBarOverlayLayout;
    :cond_0
    return-void
.end method

.method protected initSplitMode()V
    .locals 3

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 323
    .local v0, "c":Landroid/content/Context;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 324
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 325
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {v1}, Landroid/content/Intent;->getHwFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/HwPhoneWindow;->mSplitMode:Z

    .line 329
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method protected initTranslucentImmersion()V
    .locals 5

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 310
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 311
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 312
    .local v1, "tv":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x2010033

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 314
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->data:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/policy/HwPhoneWindow;->mIsTranslucentImmersion:Z

    .line 316
    .end local v1    # "tv":Landroid/util/TypedValue;
    :cond_1
    return-void
.end method

.method protected isEmuiLightStyle()Z
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/hwcontrol/HwWidgetFactory;->isHwLightTheme(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected isEmuiStyle()Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/hwcontrol/HwWidgetFactory;->isHwTheme(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isNavigationBarSetWhite()Z
    .locals 1

    .line 497
    invoke-static {}, Lcom/android/internal/policy/HwPhoneWindow$Utils;->access$000()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/policy/HwPhoneWindow$Utils;->getLastDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/HwPhoneWindow;->isDeviceProvisioned()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/policy/HwPhoneWindow$Utils;->setLastDeviceProvisioned(Z)V

    .line 501
    invoke-static {}, Lcom/android/internal/policy/HwPhoneWindow$Utils;->getLastDeviceProvisioned()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 498
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isSplitMode()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mSplitMode:Z

    return v0
.end method

.method protected isTranslucentImmersion()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mIsTranslucentImmersion:Z

    return v0
.end method

.method public onWindowStateChanged(I)V
    .locals 1
    .param p1, "windowState"    # I

    .line 446
    iget-object v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    instance-of v0, v0, Lcom/android/internal/widget/HwDecorCaptionView;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    check-cast v0, Lcom/android/internal/widget/HwDecorCaptionView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/HwDecorCaptionView;->onWindowStateChanged(I)V

    .line 449
    :cond_0
    return-void
.end method

.method public setAppToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .line 452
    iput-object p1, p0, Lcom/android/internal/policy/HwPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 453
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .line 342
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(I)V

    .line 343
    invoke-direct {p0}, Lcom/android/internal/policy/HwPhoneWindow;->updateBlurStatus()V

    .line 344
    invoke-direct {p0}, Lcom/android/internal/policy/HwPhoneWindow;->initChildWindowIgnoreParentWindowClipRect()V

    .line 345
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 349
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    .line 350
    invoke-direct {p0}, Lcom/android/internal/policy/HwPhoneWindow;->updateBlurStatus()V

    .line 351
    invoke-direct {p0}, Lcom/android/internal/policy/HwPhoneWindow;->initChildWindowIgnoreParentWindowClipRect()V

    .line 352
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 356
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    invoke-direct {p0}, Lcom/android/internal/policy/HwPhoneWindow;->updateBlurStatus()V

    .line 358
    invoke-direct {p0}, Lcom/android/internal/policy/HwPhoneWindow;->initChildWindowIgnoreParentWindowClipRect()V

    .line 359
    return-void
.end method

.method public setDrawerOpend(Z)V
    .locals 1
    .param p1, "open"    # Z

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    instance-of v0, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    check-cast v0, Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setDrawerOpend(Z)V

    .line 442
    :cond_0
    return-void
.end method

.method protected setEmuiActionModeBar(Landroid/view/ViewStub;)V
    .locals 1
    .param p1, "viewStub"    # Landroid/view/ViewStub;

    .line 166
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->isEmuiStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const v0, 0x2070057

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public setHwDrawerFeature(ZI)V
    .locals 1
    .param p1, "using"    # Z
    .param p2, "overlayActionBar"    # I

    .line 421
    iput-boolean p1, p0, Lcom/android/internal/policy/HwPhoneWindow;->mHwDrawerFeature:Z

    .line 422
    if-eqz p1, :cond_0

    .line 423
    iput p2, p0, Lcom/android/internal/policy/HwPhoneWindow;->mHwOverlayActionBar:I

    goto :goto_0

    .line 425
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mHwOverlayActionBar:I

    .line 427
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->initHwDrawerFeature()V

    .line 428
    return-void
.end method

.method protected setHwFlagForInvisibleWindowDetection(ZZ)V
    .locals 3
    .param p1, "isTranslucent"    # Z
    .param p2, "noActionBar"    # Z

    .line 479
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 480
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 481
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    const v2, -0x10000001

    and-int/2addr v1, v2

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    .line 484
    :cond_0
    if-eqz p2, :cond_1

    .line 485
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    const v2, -0x20000001

    and-int/2addr v1, v2

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    .line 488
    :cond_1
    return-void
.end method

.method protected setHwFlagForNotch(Z)V
    .locals 3
    .param p1, "isTranslucent"    # Z

    .line 468
    sget-boolean v0, Lcom/android/internal/policy/HwPhoneWindow;->IS_NOTCH_PROP:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 470
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    const v2, -0x8001

    and-int/2addr v1, v2

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    .line 473
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public setHwFloating(Z)V
    .locals 1
    .param p1, "isFloating"    # Z

    .line 255
    iget-boolean v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mHwFloating:Z

    if-eq v0, p1, :cond_0

    .line 256
    iput-boolean p1, p0, Lcom/android/internal/policy/HwPhoneWindow;->mHwFloating:Z

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->updateLayoutParamsColor()V

    .line 259
    :cond_0
    return-void
.end method

.method public setNavBarShowStatus(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 525
    iget-boolean v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mNavBarShow:Z

    if-eq v0, p1, :cond_0

    .line 526
    iput-boolean p1, p0, Lcom/android/internal/policy/HwPhoneWindow;->mNavBarShow:Z

    .line 527
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->updateLayoutParamsColor()V

    .line 529
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "updateAccessibilityTitle"    # Z

    .line 461
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    instance-of v0, v0, Lcom/android/internal/widget/HwDecorCaptionView;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/HwPhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    check-cast v0, Lcom/android/internal/widget/HwDecorCaptionView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/HwDecorCaptionView;->setTitle(Ljava/lang/CharSequence;)V

    .line 465
    :cond_0
    return-void
.end method

.method protected updateLayoutParamsColor()V
    .locals 10

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 185
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    .line 186
    .local v1, "changed":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getStatusBarColor()I

    move-result v2

    .line 187
    .local v2, "statusBarColor":I
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    if-eq v3, v2, :cond_0

    .line 188
    const/4 v1, 0x1

    .line 189
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->getNavigationBarColor()I

    move-result v3

    .line 193
    .local v3, "navigationBarColor":I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->navigationBarColor:I

    if-eq v4, v3, :cond_1

    .line 194
    const/4 v1, 0x1

    .line 195
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->navigationBarColor:I

    .line 198
    :cond_1
    const/4 v4, -0x1

    .line 199
    .local v4, "emuiValue":I
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x20000000

    and-int/2addr v5, v6

    if-nez v5, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->isEmuiStyle()Z

    move-result v5

    move v4, v5

    .line 202
    invoke-direct {p0, v4}, Lcom/android/internal/policy/HwPhoneWindow;->getEmuiValue(I)I

    move-result v4

    .line 205
    :cond_2
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->isEmuiStyle:I

    if-eq v5, v4, :cond_3

    .line 206
    const/4 v1, 0x1

    .line 207
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->isEmuiStyle:I

    .line 210
    :cond_3
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    .line 211
    .local v5, "hwflag":I
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->isForcedNavigationBarColor()Z

    move-result v6

    .line 213
    .local v6, "isForcedNavigationBarColor":Z
    const v7, -0x30304

    if-ne v3, v7, :cond_4

    iget-boolean v7, p0, Lcom/android/internal/policy/HwPhoneWindow;->mSpecialSet:Z

    if-eqz v7, :cond_4

    if-nez v6, :cond_4

    iget-boolean v7, p0, Lcom/android/internal/policy/HwPhoneWindow;->mNavBarShow:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/internal/policy/HwPhoneWindow;->mIsFloating:Z

    if-nez v7, :cond_4

    .line 216
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    goto :goto_0

    .line 218
    :cond_4
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7db

    if-ne v7, v8, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneWindow;->isEmuiLightStyle()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 219
    if-nez v6, :cond_5

    .line 220
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    goto :goto_0

    .line 222
    :cond_5
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    and-int/lit8 v7, v7, -0x11

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    goto :goto_0

    .line 226
    :cond_6
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    and-int/lit8 v7, v7, -0x11

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    .line 228
    :goto_0
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    if-eq v5, v7, :cond_7

    .line 229
    const/4 v1, 0x1

    .line 232
    :cond_7
    const-string v7, "HwPhoneWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateLayoutParamsColor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mSpecialSet="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/internal/policy/HwPhoneWindow;->mSpecialSet:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mForcedNavigationBarColor="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", navigationBarColor="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mNavBarShow="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/internal/policy/HwPhoneWindow;->mNavBarShow:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mIsFloating="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/internal/policy/HwPhoneWindow;->mIsFloating:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 232
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-eqz v1, :cond_8

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/HwPhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 241
    :cond_8
    return-void
.end method
