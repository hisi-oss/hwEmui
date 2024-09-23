.class public Lcom/huawei/android/hwcontrol/HwDialogStubImpl;
.super Ljava/lang/Object;
.source "HwDialogStubImpl.java"

# interfaces
.implements Landroid/hwcontrol/HwWidgetFactory$HwDialogStub;


# static fields
.field private static final DB:Z = false

.field private static final DIALOG_AIMATE_TO_BOTTOM:I = 0x4

.field private static final DIALOG_AIMATE_TO_TOP:I = 0x3

.field private static final DIALOG_AIMATE_UP_DOWN_DURATION:I = 0x190

.field private static final INIT:I = -0x1

.field private static final PERCENT:I = 0x6

.field private static final ROTATION_ANGLE:F = 0.34906587f

.field private static final ROTATION_SPEED:F = 5.6548667f

.field private static final STATE_DOWN:I = 0x1

.field private static final STATE_TOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DialogFactory"

.field private static final VERTICAL_MARGIN:I = 0x24


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private final mHandler:Landroid/os/Handler;

.field private mIsEverReset:Z

.field private mIsInputMethodOn:Z

.field private mLastY:I

.field private mMask:I

.field private mOffset:I

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mResetAction:Ljava/lang/Runnable;

.field private mSensorManager:Lcom/huawei/android/hardware/HwSensorManager;

.field private final mStartAction:Ljava/lang/Runnable;

.field private mState:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/app/Dialog;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "dialog"    # Landroid/app/Dialog;
    .param p4, "mask"    # I

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mState:I

    .line 72
    iput v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mOffset:I

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$1;-><init>(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)V

    iput-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mStartAction:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$2;

    invoke-direct {v0, p0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$2;-><init>(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)V

    iput-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mResetAction:Ljava/lang/Runnable;

    .line 96
    new-instance v0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;

    invoke-direct {v0, p0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$3;-><init>(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)V

    iput-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 151
    iput-object p3, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mDialog:Landroid/app/Dialog;

    .line 152
    iput p4, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mMask:I

    .line 154
    iput-object p1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mWindow:Landroid/view/Window;

    .line 156
    new-instance v0, Lcom/huawei/android/hardware/HwSensorManager;

    invoke-direct {v0, p1}, Lcom/huawei/android/hardware/HwSensorManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mSensorManager:Lcom/huawei/android/hardware/HwSensorManager;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 52
    invoke-direct {p0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->startAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 52
    invoke-direct {p0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->resetPositionForInputMethodOn()V

    return-void
.end method

.method static synthetic access$1000(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 52
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 52
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mResetAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 52
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->isShouldChange(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->setState(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 52
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mStartAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 52
    iget v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mOffset:I

    return v0
.end method

.method static synthetic access$200(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 52
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 52
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;
    .param p1, "x1"    # Landroid/view/View;

    .line 52
    invoke-direct {p0, p1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->isInputMethodTarget(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;
    .param p1, "x1"    # Landroid/view/View;

    .line 52
    invoke-direct {p0, p1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->getLocationYOnScreen(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 52
    iget v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mLastY:I

    return v0
.end method

.method static synthetic access$602(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;
    .param p1, "x1"    # I

    .line 52
    iput p1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mLastY:I

    return p1
.end method

.method static synthetic access$700(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 52
    iget-boolean v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mIsInputMethodOn:Z

    return v0
.end method

.method static synthetic access$702(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mIsInputMethodOn:Z

    return p1
.end method

.method static synthetic access$800(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 52
    iget-boolean v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mIsEverReset:Z

    return v0
.end method

.method static synthetic access$802(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mIsEverReset:Z

    return p1
.end method

.method static synthetic access$900(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 52
    iget v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mState:I

    return v0
.end method

.method private addInputMethodListener(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 357
    invoke-direct {p0, p1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->getViewTreeObserver(Landroid/view/View;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 358
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    goto :goto_0

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "DialogFactory"

    const-string v3, "addOnGlobalLayoutListener IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :goto_0
    return-void
.end method

.method private getLocationYOnScreen(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 400
    if-nez p1, :cond_0

    .line 401
    const-string v0, "DialogFactory"

    const-string v1, "getLocationYOnScreen view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v0, 0x0

    return v0

    .line 404
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 405
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 406
    const/4 v1, 0x1

    aget v1, v0, v1

    return v1
.end method

.method private getViewTreeObserver(Landroid/view/View;)Landroid/view/ViewTreeObserver;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 329
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 330
    const-string v1, "DialogFactory"

    const-string v2, "getViewTreeObserver view is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-object v0

    .line 333
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 334
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    if-nez v1, :cond_1

    .line 335
    const-string v2, "DialogFactory"

    const-string v3, "getViewTreeObserver observer is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-object v0

    .line 338
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 348
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 349
    return-object v0

    .line 352
    :cond_2
    return-object v1
.end method

.method private hasButton(I)Z
    .locals 4
    .param p1, "whichButton"    # I

    .line 428
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mDialog:Landroid/app/Dialog;

    instance-of v0, v0, Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mDialog:Landroid/app/Dialog;

    check-cast v0, Landroid/app/AlertDialog;

    .line 430
    .local v0, "ad":Landroid/app/AlertDialog;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 431
    .local v2, "button":Landroid/widget/Button;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 433
    .end local v0    # "ad":Landroid/app/AlertDialog;
    .end local v2    # "button":Landroid/widget/Button;
    :cond_1
    return v1
.end method

.method private initAnimatorParams(Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 5
    .param p1, "windowManager"    # Landroid/view/WindowManager;
    .param p2, "view"    # Landroid/view/View;

    .line 252
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mContext:Landroid/content/Context;

    const v1, 0x2080003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 253
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    const-string v1, "y"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 254
    .local v1, "holder":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mAnimator:Landroid/animation/ValueAnimator;

    .line 255
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 257
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$5;

    invoke-direct {v3, p0, p2, p1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$5;-><init>(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Landroid/view/View;Landroid/view/WindowManager;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 280
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$6;

    invoke-direct {v3, p0, p2}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$6;-><init>(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private isInputMethodTarget(Landroid/view/View;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 382
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 383
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 384
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 385
    .local v2, "count":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 386
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->isInputMethodTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 387
    const/4 v1, 0x1

    return v1

    .line 385
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 390
    .end local v3    # "i":I
    :cond_1
    return v1

    .line 392
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v2    # "count":I
    :cond_2
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 393
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v0

    return v0

    .line 395
    :cond_3
    return v1
.end method

.method private isShouldChange(II)Z
    .locals 2
    .param p1, "state"    # I
    .param p2, "direction"    # I

    .line 292
    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    :cond_0
    if-ne p1, v0, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeInputMethodListener(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 370
    invoke-direct {p0, p1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->getViewTreeObserver(Landroid/view/View;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 371
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    goto :goto_0

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "DialogFactory"

    const-string v3, "removeOnGlobalLayoutListener IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :goto_0
    return-void
.end method

.method private resetPositionForInputMethodOn()V
    .locals 4

    .line 410
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 412
    .local v0, "l":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 413
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 414
    iget-object v3, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    iput v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mState:I

    .line 416
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mIsEverReset:Z

    .line 418
    .end local v0    # "l":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setState(Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 305
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 306
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 309
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 310
    .local v1, "displayHeight":I
    const v2, 0x10501a6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 311
    .local v2, "statusBarHeight":I
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v3

    .line 312
    .local v4, "height":I
    :goto_0
    sub-int v5, v1, v2

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    const/high16 v6, 0x42100000    # 36.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    .line 313
    .local v5, "offset":I
    if-gez v5, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    iput v6, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mOffset:I

    .line 316
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 321
    :pswitch_0
    const/4 v3, 0x1

    iput v3, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mState:I

    .line 322
    goto :goto_2

    .line 318
    :pswitch_1
    iput v3, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mState:I

    .line 319
    nop

    .line 326
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startAnim()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 301
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissDialogFactory()V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mSensorManager:Lcom/huawei/android/hardware/HwSensorManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 231
    .local v0, "type":I
    const/16 v1, 0x7db

    if-ne v0, v1, :cond_1

    .line 234
    return-void

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->removeInputMethodListener(Landroid/view/View;)V

    .line 241
    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 243
    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 245
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mAnimator:Landroid/animation/ValueAnimator;

    .line 246
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mSensorManager:Lcom/huawei/android/hardware/HwSensorManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/huawei/android/hardware/HwSensorManager;->setMoveDirection(I)V

    .line 247
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mSensorManager:Lcom/huawei/android/hardware/HwSensorManager;

    invoke-virtual {v2}, Lcom/huawei/android/hardware/HwSensorManager;->unRegisterListeners()V

    .line 248
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mSensorManager:Lcom/huawei/android/hardware/HwSensorManager;

    invoke-virtual {v2, v1}, Lcom/huawei/android/hardware/HwSensorManager;->setSensorListener(Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;)V

    .line 249
    return-void

    .line 228
    .end local v0    # "type":I
    :cond_3
    :goto_0
    return-void
.end method

.method public getMask()I
    .locals 1

    .line 437
    iget v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mMask:I

    return v0
.end method

.method public hasButtons()Z
    .locals 1

    .line 422
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->hasButton(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x2

    .line 423
    invoke-direct {p0, v0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->hasButton(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x3

    .line 424
    invoke-direct {p0, v0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->hasButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 422
    :goto_1
    return v0
.end method

.method public showDialogFactory()V
    .locals 7

    .line 161
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mSensorManager:Lcom/huawei/android/hardware/HwSensorManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_2

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 165
    .local v0, "type":I
    const/16 v1, 0x7db

    if-ne v0, v1, :cond_1

    .line 168
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mSensorManager:Lcom/huawei/android/hardware/HwSensorManager;

    .line 169
    return-void

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 172
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 173
    .local v2, "view":Landroid/view/View;
    if-eqz v1, :cond_5

    if-nez v2, :cond_2

    goto :goto_1

    .line 176
    :cond_2
    iget-object v3, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mSensorManager:Lcom/huawei/android/hardware/HwSensorManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/huawei/android/hardware/HwSensorManager;->registerSensorListener(I)Z

    move-result v3

    .line 177
    .local v3, "isRegister":Z
    if-eqz v3, :cond_4

    .line 179
    invoke-direct {p0, v2}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->addInputMethodListener(Landroid/view/View;)V

    .line 180
    invoke-direct {p0, v2}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->getLocationYOnScreen(Landroid/view/View;)I

    move-result v4

    iput v4, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mLastY:I

    .line 182
    iget-object v4, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_3

    .line 183
    invoke-direct {p0, v1, v2}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->initAnimatorParams(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 185
    :cond_3
    iget-object v4, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mSensorManager:Lcom/huawei/android/hardware/HwSensorManager;

    const v5, 0x3eb2b8c3

    invoke-virtual {v4, v5}, Lcom/huawei/android/hardware/HwSensorManager;->setRotationAngle(F)V

    .line 186
    iget-object v4, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mSensorManager:Lcom/huawei/android/hardware/HwSensorManager;

    const v5, 0x40b4f4ab

    invoke-virtual {v4, v5}, Lcom/huawei/android/hardware/HwSensorManager;->setAngularSpeedThreshold(F)V

    .line 187
    iget-object v4, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->mSensorManager:Lcom/huawei/android/hardware/HwSensorManager;

    new-instance v5, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;

    invoke-direct {v5, p0, v2}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$4;-><init>(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Lcom/huawei/android/hardware/HwSensorManager;->setSensorListener(Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;)V

    goto :goto_0

    .line 221
    :cond_4
    const-string v4, "DialogFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showDialogFactory sensor register fail, isRegister = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    return-void

    .line 174
    .end local v3    # "isRegister":Z
    :cond_5
    :goto_1
    return-void

    .line 162
    .end local v0    # "type":I
    .end local v1    # "wm":Landroid/view/WindowManager;
    .end local v2    # "view":Landroid/view/View;
    :cond_6
    :goto_2
    return-void
.end method
