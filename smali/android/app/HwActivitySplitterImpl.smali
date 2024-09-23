.class public Landroid/app/HwActivitySplitterImpl;
.super Ljava/lang/Object;
.source "HwActivitySplitterImpl.java"

# interfaces
.implements Landroid/app/IHwActivitySplitterImpl;


# static fields
.field private static final ACTION_CROP_IMAGE:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final ACTION_CROP_WALLPAPER:Ljava/lang/String; = "com.android.camera.action.CROP_WALLPAPER"

.field private static final ENSURE_CONTENT_SHOWING_DELAY:I = 0x12c

.field public static final EXTRA_JUMPED_ACTIVITY:Ljava/lang/String; = "huawei.intent.extra.JUMPED_ACTIVITY"

.field private static EXTRA_SPLIT_BASE_PID:Ljava/lang/String; = null

.field private static final EXTRA_SPLIT_MODE:Ljava/lang/String; = "huawei.extra.splitmode"

.field private static final EXTRA_VALUE_BASE_ACTIVITY:I = 0x4

.field private static final EXTRA_VALUE_EXIT_ALONE:I = 0x2

.field private static final EXTRA_VALUE_FORCE_SPLIT:I = 0x8

.field private static final EXTRA_VALUE_SEC_ACTIVITY:I = 0x1

.field private static final EXTRA_VALUE_SUBINTENT_ONE:I = 0x10

.field private static final IS_NEED_PERFORM_CLICK_ACTION_DELAY:I = 0x1f4

.field private static final MSG_ADD_TO_ENTRY_STACK:I = 0x2

.field private static final MSG_CLEAR_ENTRY_STACK:I = 0x1

.field private static final MSG_SET_ACTIONBAR:I = 0x3

.field private static final MSG_SET_FIRST_DONE:I = 0x4

.field private static final MSG_SET_RESUMED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "HwActivitySplitterImpl"

.field private static final TYPE_FILEMANAGER:Ljava/lang/String; = "filemanager.dir"

.field private static final descriptor:Ljava/lang/String; = "android.app.IActivityManager"

.field private static mControllerShowing:Z

.field private static mFirstTimeStart:Z

.field private static mInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/app/HwActivitySplitterImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAllContentGone:Z

.field private mAllSubFinished:Z

.field private mBackPressed:Z

.field private mBasePid:I

.field private mContentIndexView:Landroid/view/View;

.field private mContentIndexViewWeight:F

.field private mContentWindowWeight:F

.field private mEventDelayTimeBegin:J

.field private mIsFinishing:Z

.field private mIsJumpActivity:Z

.field private mIsSecondStageActivity:Z

.field private mIsSplitBaseActivity:Z

.field private mRecycled:Z

.field private mRestart:Z

.field private mResumed:Z

.field private mSplit:Z

.field private mSplitHandler:Landroid/os/Handler;

.field private mToken:Landroid/os/IBinder;

.field private mTransCodeAddEntry:I

.field private mTransCodeClearEntry:I

.field private mTransCodeGetLast:I

.field private mTransCodeIsTop:I

.field private mTransCodeRemoveEntry:I

.field private mTransCodeSetLast:I

.field private mUpButtonVisibility:I

.field private mWinSize:Landroid/graphics/Point;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    const-string v0, "huawei.extra.split.PID"

    sput-object v0, Landroid/app/HwActivitySplitterImpl;->EXTRA_SPLIT_BASE_PID:Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/HwActivitySplitterImpl;->mInstanceMap:Ljava/util/HashMap;

    .line 347
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/HwActivitySplitterImpl;->mControllerShowing:Z

    .line 350
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/HwActivitySplitterImpl;->mFirstTimeStart:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "isBase"    # Z

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/HwActivitySplitterImpl;->mEventDelayTimeBegin:J

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mRestart:Z

    .line 208
    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplit:Z

    .line 231
    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    .line 234
    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    .line 237
    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mAllContentGone:Z

    .line 636
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/HwActivitySplitterImpl;->mUpButtonVisibility:I

    .line 962
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/HwActivitySplitterImpl;->mWinSize:Landroid/graphics/Point;

    .line 1209
    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mBackPressed:Z

    .line 1306
    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsJumpActivity:Z

    .line 1353
    iput v1, p0, Landroid/app/HwActivitySplitterImpl;->mBasePid:I

    .line 1438
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/HwActivitySplitterImpl;->mResumed:Z

    .line 1440
    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsFinishing:Z

    .line 1537
    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mAllSubFinished:Z

    .line 1553
    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mRecycled:Z

    .line 1626
    iput v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeSetLast:I

    .line 1627
    iput v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeGetLast:I

    .line 1628
    iput v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeAddEntry:I

    .line 1629
    iput v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeClearEntry:I

    .line 1630
    iput v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeRemoveEntry:I

    .line 1631
    iput v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeIsTop:I

    .line 242
    iput-object p1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    .line 244
    if-eqz p2, :cond_0

    .line 245
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->removeCancelFlagInner(Landroid/content/Intent;)V

    .line 247
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/app/HwActivitySplitterImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/HwActivitySplitterImpl;

    .line 63
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->isTopSplitActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/app/HwActivitySplitterImpl;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Landroid/app/HwActivitySplitterImpl;

    .line 63
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/app/HwActivitySplitterImpl;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/app/HwActivitySplitterImpl;
    .param p1, "x1"    # Z

    .line 63
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->setActionBarButton(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/HwActivitySplitterImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/HwActivitySplitterImpl;

    .line 63
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    return v0
.end method

.method static synthetic access$300(Landroid/app/HwActivitySplitterImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/HwActivitySplitterImpl;

    .line 63
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->isJumpedActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/app/HwActivitySplitterImpl;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/app/HwActivitySplitterImpl;
    .param p1, "x1"    # Z

    .line 63
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->clearEntryStack(Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/app/HwActivitySplitterImpl;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Landroid/app/HwActivitySplitterImpl;

    .line 63
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/HwActivitySplitterImpl;Landroid/os/IBinder;ILandroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/HwActivitySplitterImpl;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/app/HwActivitySplitterImpl;->addToEntryStack(Landroid/os/IBinder;ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Landroid/app/HwActivitySplitterImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/HwActivitySplitterImpl;

    .line 63
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mAllSubFinished:Z

    return v0
.end method

.method static synthetic access$800(Landroid/app/HwActivitySplitterImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/HwActivitySplitterImpl;

    .line 63
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->isBaseActivityNeedExit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/app/HwActivitySplitterImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/HwActivitySplitterImpl;

    .line 63
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->clearSplittableInfo()V

    return-void
.end method

.method private addToEntryStack(Landroid/os/IBinder;ILandroid/content/Intent;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1707
    iget v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeAddEntry:I

    if-nez v0, :cond_0

    .line 1708
    const-string v0, "ADD_TO_ENTRY_STACK_TRANSACTION"

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->getTransCode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeAddEntry:I

    .line 1710
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1711
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1712
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1713
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->getBasePid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1714
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1715
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1716
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1717
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget v4, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeAddEntry:I

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1718
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1721
    return-void
.end method

.method private adjustActionBar()V
    .locals 4

    .line 463
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->getActionBarView()Landroid/view/View;

    move-result-object v0

    .line 464
    .local v0, "abLayout":Landroid/view/View;
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/app/HwActivitySplitterImpl;->mContentIndexViewWeight:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 471
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Landroid/app/HwActivitySplitterImpl;->mContentIndexViewWeight:F

    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->getCurrentWindowWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 473
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    return-void

    .line 465
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    :goto_0
    const-string v1, "HwActivitySplitterImpl"

    const-string v2, "Can not get actionbar layout."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void
.end method

.method private adjustContentIndexView()V
    .locals 4

    .line 427
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mContentIndexView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/app/HwActivitySplitterImpl;->mContentIndexViewWeight:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->reachSplitSize()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mContentIndexView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 433
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/app/HwActivitySplitterImpl;->mContentIndexViewWeight:F

    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->getCurrentWindowWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 435
    sget-boolean v1, Landroid/util/Log;->HWLog:Z

    if-eqz v1, :cond_1

    const-string v1, "HwActivitySplitterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjust content index view, set width to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_1
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mContentIndexView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->adjustActionBar()V

    .line 440
    return-void

    .line 428
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    :goto_0
    return-void
.end method

.method private checkSecondStage(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 625
    if-eqz p1, :cond_2

    .line 627
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->getSplitModeValue(Landroid/content/Intent;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    .line 629
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-nez v0, :cond_1

    .line 630
    const-string v0, "huawei.intent.extra.JUMPED_ACTIVITY"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    .line 632
    :cond_1
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_2

    const-string v0, "HwActivitySplitterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is second stage ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_2
    return-void
.end method

.method private checkSplitHandler()V
    .locals 1

    .line 762
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 763
    return-void

    .line 766
    :cond_0
    new-instance v0, Landroid/app/HwActivitySplitterImpl$1;

    invoke-direct {v0, p0}, Landroid/app/HwActivitySplitterImpl$1;-><init>(Landroid/app/HwActivitySplitterImpl;)V

    iput-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    .line 811
    return-void
.end method

.method private clearEntryStack(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1729
    iget v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeClearEntry:I

    if-nez v0, :cond_0

    .line 1730
    const-string v0, "CLEAR_ENTRY_STACK_TRANSACTION"

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->getTransCode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeClearEntry:I

    .line 1732
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1733
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1734
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1735
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->getBasePid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1737
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeClearEntry:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1738
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1741
    return-void
.end method

.method private clearEntryStack(Z)V
    .locals 3
    .param p1, "includeSelf"    # Z

    .line 1601
    if-eqz p1, :cond_0

    .line 1602
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->clearEntryStack(Landroid/os/IBinder;)V

    goto :goto_0

    .line 1606
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1604
    :cond_0
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mToken:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->clearEntryStack(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1608
    :goto_0
    goto :goto_2

    .line 1606
    :goto_1
    nop

    .line 1607
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HwActivitySplitterImpl"

    const-string v2, "clearEntryStack FAIL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private clearSplittableInfo()V
    .locals 1

    .line 1412
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->setLastSplittableActivity(Landroid/content/Intent;)V

    .line 1413
    return-void
.end method

.method private deliverExtraInfo(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1369
    if-nez p1, :cond_0

    .line 1370
    return-void

    .line 1373
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addHwFlags(I)Landroid/content/Intent;

    .line 1375
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1376
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Landroid/app/HwActivitySplitterImpl;->EXTRA_SPLIT_BASE_PID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1377
    sget-object v0, Landroid/app/HwActivitySplitterImpl;->EXTRA_SPLIT_BASE_PID:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/app/HwActivitySplitterImpl;->EXTRA_SPLIT_BASE_PID:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1379
    :cond_1
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extras_hw_split_size"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1380
    const-string v0, "extras_hw_split_size"

    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extras_hw_split_size"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 1383
    :cond_2
    return-void
.end method

.method private disposeFakeActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 553
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-eqz v0, :cond_0

    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    .line 555
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->clearSplittableInfo()V

    .line 557
    :cond_0
    return-void
.end method

.method private finishAssociatedActivities()V
    .locals 3

    .line 1478
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1479
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->isBaseActivityNeedExit()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsFinishing:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1484
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsFinishing:Z

    .line 1487
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->isTopSplitActivity()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/app/HwActivitySplitterImpl;->mBackPressed:Z

    if-eqz v1, :cond_4

    .line 1488
    :cond_1
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->isTaskRoot()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->isJumpedActivity()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1493
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    goto :goto_1

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "HwActivitySplitterImpl"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 1489
    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 1499
    :cond_4
    :goto_1
    return-void

    .line 1480
    :cond_5
    :goto_2
    const-string v0, "HwActivitySplitterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity is already finishing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    return-void
.end method

.method private finishOtherSplitActivity()V
    .locals 4

    .line 732
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->checkSplitHandler()V

    .line 733
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->getDelayTime()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 734
    return-void
.end method

.method private getBasePid()I
    .locals 3

    .line 1355
    iget v0, p0, Landroid/app/HwActivitySplitterImpl;->mBasePid:I

    if-lez v0, :cond_0

    .line 1356
    iget v0, p0, Landroid/app/HwActivitySplitterImpl;->mBasePid:I

    return v0

    .line 1359
    :cond_0
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1360
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Landroid/app/HwActivitySplitterImpl;->EXTRA_SPLIT_BASE_PID:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/HwActivitySplitterImpl;->mBasePid:I

    .line 1362
    :cond_1
    iget v0, p0, Landroid/app/HwActivitySplitterImpl;->mBasePid:I

    if-gez v0, :cond_2

    .line 1363
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Landroid/app/HwActivitySplitterImpl;->mBasePid:I

    .line 1365
    :cond_2
    iget v0, p0, Landroid/app/HwActivitySplitterImpl;->mBasePid:I

    return v0
.end method

.method private getCompName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 709
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 710
    return-object v0

    .line 713
    :cond_0
    const-string v1, ":settings:show_fragment"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "compName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 715
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_3

    const-string v0, "HwActivitySplitterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get fragment name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 717
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 719
    :cond_3
    :goto_1
    return-object v1
.end method

.method private getContentWeight()F
    .locals 4

    .line 922
    iget v0, p0, Landroid/app/HwActivitySplitterImpl;->mContentWindowWeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 923
    iget v0, p0, Landroid/app/HwActivitySplitterImpl;->mContentWindowWeight:F

    return v0

    .line 926
    :cond_0
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x20b0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 927
    .local v0, "leftWeight":I
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 928
    .local v1, "rightWeight":I
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, v1

    mul-float/2addr v2, v3

    add-int v3, v0, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Landroid/app/HwActivitySplitterImpl;->mContentWindowWeight:F

    .line 930
    iget v2, p0, Landroid/app/HwActivitySplitterImpl;->mContentWindowWeight:F

    return v2
.end method

.method private getCurrentWindowWidth()I
    .locals 3

    .line 964
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mWinSize:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 965
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mWinSize:Landroid/graphics/Point;

    .line 967
    :cond_0
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mWinSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 968
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_1

    const-string v0, "HwActivitySplitterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get current window width is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/HwActivitySplitterImpl;->mWinSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_1
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mWinSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public static getDefault(Landroid/app/Activity;)Landroid/app/HwActivitySplitterImpl;
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;

    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/app/HwActivitySplitterImpl;->getDefault(Landroid/app/Activity;Z)Landroid/app/HwActivitySplitterImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getDefault(Landroid/app/Activity;Z)Landroid/app/HwActivitySplitterImpl;
    .locals 3
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "isBase"    # Z

    .line 255
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 256
    return-object v0

    .line 258
    :cond_0
    sget-object v1, Landroid/app/HwActivitySplitterImpl;->mInstanceMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/HwActivitySplitterImpl;

    .line 259
    .local v1, "instance":Landroid/app/HwActivitySplitterImpl;
    if-eqz v1, :cond_1

    .line 260
    return-object v1

    .line 263
    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 264
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getHwFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_3

    .line 265
    :cond_2
    return-object v0

    .line 268
    :cond_3
    new-instance v0, Landroid/app/HwActivitySplitterImpl;

    invoke-direct {v0, p0, p1}, Landroid/app/HwActivitySplitterImpl;-><init>(Landroid/app/Activity;Z)V

    .line 269
    .end local v1    # "instance":Landroid/app/HwActivitySplitterImpl;
    .local v0, "instance":Landroid/app/HwActivitySplitterImpl;
    sget-object v1, Landroid/app/HwActivitySplitterImpl;->mInstanceMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    return-object v0
.end method

.method private getDelayTime()I
    .locals 4

    .line 741
    :try_start_0
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "activity_close_enter_duration"

    const-string v2, "integer"

    const-string v3, "androidhwext"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 742
    .local v0, "idAnimDuration":I
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 743
    .local v1, "duration":I
    iget-object v2, p0, Landroid/app/HwActivitySplitterImpl;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v2, :cond_0

    .line 744
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Landroid/app/HwActivitySplitterImpl;->mWindowManager:Landroid/view/IWindowManager;

    .line 746
    :cond_0
    iget-object v2, p0, Landroid/app/HwActivitySplitterImpl;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    .local v2, "scale":F
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v3, v3

    return v3

    .line 748
    .end local v0    # "idAnimDuration":I
    .end local v1    # "duration":I
    .end local v2    # "scale":F
    :catch_0
    move-exception v0

    .line 749
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v1, "HwActivitySplitterImpl"

    const-string v2, "throws RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    .end local v0    # "exception":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method private getIntentBundle(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1107
    if-eqz p1, :cond_0

    .line 1108
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 1110
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getIntentInfo(IZ)Landroid/content/Intent;
    .locals 5
    .param p1, "pid"    # I
    .param p2, "forLast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1680
    iget v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeGetLast:I

    if-nez v0, :cond_0

    .line 1681
    const-string v0, "GET_LAST_SPLIT_ACTIVITY_TRANSACTION"

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->getTransCode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeGetLast:I

    .line 1683
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1684
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1685
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1686
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1687
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1688
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeGetLast:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1689
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1690
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 1691
    .local v2, "p":[Landroid/os/Parcelable;
    aget-object v3, v2, v4

    check-cast v3, Landroid/content/Intent;

    .line 1692
    .local v3, "intent":Landroid/content/Intent;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    check-cast v4, Landroid/os/Bundle;

    .line 1693
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 1694
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1696
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1698
    return-object v3
.end method

.method private getSplitModeValue(Landroid/content/Intent;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 109
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 110
    return v0

    .line 112
    :cond_0
    const-string v1, "huawei.extra.splitmode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getTopActivity()Landroid/content/ComponentName;
    .locals 4

    .line 693
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 695
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 696
    return-object v1

    .line 699
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 700
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 704
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 705
    .local v1, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v3

    .line 701
    .end local v1    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    :goto_0
    return-object v1
.end method

.method private getTransCode(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1634
    const/4 v0, 0x0

    .line 1636
    .local v0, "transCode":I
    :try_start_0
    const-string v1, "com.huawei.android.os.HwTransCodeEx"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1637
    .local v1, "ownerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1638
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 1647
    .end local v1    # "ownerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    goto :goto_1

    .line 1645
    :catch_0
    move-exception v1

    .line 1646
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "HwActivitySplitterImpl"

    const-string v3, "getTransCode : IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 1643
    :catch_1
    move-exception v1

    .line 1644
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "HwActivitySplitterImpl"

    const-string v3, "getTransCode : IllegalAccessException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 1641
    :catch_2
    move-exception v1

    .line 1642
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "HwActivitySplitterImpl"

    const-string v3, "getTransCode : NoSuchFieldException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 1639
    :catch_3
    move-exception v1

    .line 1640
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "HwActivitySplitterImpl"

    const-string v3, "getTransCode : ClassNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 1648
    :goto_1
    return v0
.end method

.method private handleSplitActivityStack(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 670
    if-nez p1, :cond_0

    .line 671
    return-void

    .line 674
    :cond_0
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-nez v0, :cond_2

    .line 675
    invoke-virtual {p0, p1}, Landroid/app/HwActivitySplitterImpl;->needSplitActivity(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-nez v0, :cond_1

    .line 676
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->pushSplitActivityToStack()V

    .line 678
    :cond_1
    return-void

    .line 681
    :cond_2
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->pushSplitActivityToStack()V

    .line 683
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplit:Z

    if-eqz v0, :cond_3

    .line 685
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->getTopActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 686
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->finishOtherSplitActivity()V

    .line 690
    :cond_3
    return-void
.end method

.method private isBaseActivityNeedExit()Z
    .locals 1

    .line 1194
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->isBaseActivityNeedExit(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private isBaseActivityNeedExit(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1198
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->getSplitModeValue(Landroid/content/Intent;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1199
    .local v2, "isBaseNotExit":Z
    :goto_0
    if-nez v2, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0
.end method

.method private isInUnsplittableList(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1222
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->isUnsplittableAction(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->isUnsplittableCategory(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    .line 1223
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->isUnsplittablePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1228
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1224
    :cond_1
    :goto_0
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_2

    const-string v0, "HwActivitySplitterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsplittable intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private isJumpedActivity()Z
    .locals 3

    .line 1203
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "huawei.intent.extra.JUMPED_ACTIVITY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 1206
    :cond_0
    return v1
.end method

.method private isLastIntent(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1116
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1117
    return v0

    .line 1120
    :cond_0
    const/4 v1, 0x0

    .line 1122
    .local v1, "lastIntent":Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/app/HwActivitySplitterImpl;->getIntentInfo(IZ)Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1127
    goto :goto_0

    .line 1124
    :catch_0
    move-exception v2

    .line 1126
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HwActivitySplitterImpl"

    const-string v4, "LastSplittableActivity FAIL!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1129
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->getIntentBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 1130
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v1}, Landroid/app/HwActivitySplitterImpl;->getIntentBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    .line 1131
    .local v2, "lastBundle":Landroid/os/Bundle;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 1133
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "lastBundle":Landroid/os/Bundle;
    :cond_1
    return v0
.end method

.method private isTaskRoot()Z
    .locals 6

    .line 1523
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1524
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 1525
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1529
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1530
    .local v4, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-le v5, v1, :cond_1

    goto :goto_0

    .line 1533
    :cond_1
    return v1

    .line 1531
    :cond_2
    :goto_0
    return v3

    .line 1526
    .end local v4    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    :goto_1
    return v3
.end method

.method private isTopSplitActivity()Z
    .locals 3

    .line 1590
    :try_start_0
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mToken:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->isTopSplitActivity(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 1591
    const/4 v0, 0x1

    return v0

    .line 1595
    :cond_0
    goto :goto_0

    .line 1593
    :catch_0
    move-exception v0

    .line 1594
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HwActivitySplitterImpl"

    const-string v2, "Get top activity FAIL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTopSplitActivity(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1769
    iget v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeIsTop:I

    if-nez v0, :cond_0

    .line 1770
    const-string v0, "IS_TOP_SPLIT_ACTIVITY_TRANSACTION"

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->getTransCode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeIsTop:I

    .line 1773
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1774
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1775
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1776
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->getBasePid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1777
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1778
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeIsTop:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1779
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1780
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 1781
    .local v2, "ret":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1782
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1783
    return v2
.end method

.method private isUnsplittableAction(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1234
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1235
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1236
    return v1

    .line 1239
    :cond_0
    const/4 v2, 0x0

    .line 1240
    .local v2, "isUnsplittable":Z
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "android.credentials.INSTALL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v1

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x7

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v3, 0xa

    goto :goto_0

    :sswitch_3
    const-string v4, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_4
    const-string v4, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_5
    const-string v4, "android.credentials.INSTALL_AS_USER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v5

    goto :goto_0

    :sswitch_6
    const-string v4, "android.intent.action.OPEN_DOCUMENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_7
    const-string v4, "com.android.camera.action.CROP_WALLPAPER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_8
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v3, 0xb

    goto :goto_0

    :sswitch_9
    const-string v4, "com.android.camera.action.CROP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_a
    const-string v4, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v3, 0x9

    goto :goto_0

    :sswitch_b
    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v3, 0x8

    :cond_1
    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 1255
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1256
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "filemanager.dir"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v5

    nop

    :cond_2
    move v2, v1

    .line 1257
    goto :goto_1

    .line 1252
    :pswitch_1
    const/4 v2, 0x1

    .line 1253
    nop

    .line 1262
    :goto_1
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x74de9aed -> :sswitch_b
        -0x62d863dd -> :sswitch_a
        -0x4f450f95 -> :sswitch_9
        -0x45ed2f16 -> :sswitch_8
        -0x275b40f2 -> :sswitch_7
        -0xdae1935 -> :sswitch_6
        -0x5ac48fd -> :sswitch_5
        0x1ba9c1af -> :sswitch_4
        0x1cf71807 -> :sswitch_3
        0x29c9b033 -> :sswitch_2
        0x43680478 -> :sswitch_1
        0x5e1c568a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isUnsplittableCategory(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1286
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.category.APP_BROWSER"

    .line 1287
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1290
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1288
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isUnsplittablePackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1268
    const-string v0, "com.huawei.hwid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.browser"

    .line 1271
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.huawei.browser"

    .line 1273
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1276
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1274
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private markBaseActivity(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 158
    if-nez p1, :cond_0

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->getSplitModeValue(Landroid/content/Intent;)I

    move-result v0

    .line 163
    .local v0, "value":I
    or-int/lit8 v0, v0, 0x4

    .line 164
    const-string v1, "huawei.extra.splitmode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private markJumpedActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1317
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->getCompName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/HwSplitUtils;->isJumpedActivity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    invoke-virtual {p0, p1}, Landroid/app/HwActivitySplitterImpl;->handleJumpActivity(Landroid/content/Intent;)V

    .line 1320
    :cond_0
    return-void
.end method

.method private needCancelSplit(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 584
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 585
    invoke-virtual {p1}, Landroid/content/Intent;->getHwFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 586
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->isInUnsplittableList(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 587
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 585
    :goto_1
    return v0

    .line 590
    :cond_2
    return v0
.end method

.method private needReduceActivity(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1026
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1027
    return v0

    .line 1031
    :cond_0
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->getCurrentSubIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1032
    .local v1, "curIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1033
    return v2

    .line 1036
    :cond_1
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->getCompName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 1037
    .local v3, "comp":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Landroid/app/HwActivitySplitterImpl;->getCompName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1038
    return v0

    .line 1041
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1042
    .local v4, "action":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1043
    return v0

    .line 1046
    :cond_3
    return v2
.end method

.method public static needSplit(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 594
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 595
    invoke-virtual {p0}, Landroid/content/Intent;->getHwFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 597
    :cond_1
    return v0
.end method

.method private pushSplitActivityToStack()V
    .locals 2

    .line 723
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->checkSplitHandler()V

    .line 724
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 725
    return-void
.end method

.method private redirectIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1056
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    const-string v0, "android.settings.SETTINGS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    :cond_0
    return-void
.end method

.method private reduceActionBar()V
    .locals 3

    .line 495
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->getActionBarView()Landroid/view/View;

    move-result-object v0

    .line 496
    .local v0, "abLayout":Landroid/view/View;
    if-nez v0, :cond_0

    .line 497
    return-void

    .line 500
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 501
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 502
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    return-void
.end method

.method private releaseIfNeed()V
    .locals 2

    .line 1557
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mRecycled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->isControllerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1561
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mRecycled:Z

    .line 1562
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-eqz v0, :cond_1

    .line 1563
    sget-object v0, Landroid/app/HwActivitySplitterImpl;->mInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1564
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->setCurrentSubIntent(Landroid/content/Intent;)V

    .line 1565
    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->setLastSplittableActivity(Landroid/content/Intent;)V

    .line 1566
    invoke-static {}, Landroid/app/HwActivitySplitterImpl;->resetFirsetTimeStart()V

    goto :goto_0

    .line 1568
    :cond_1
    sget-object v0, Landroid/app/HwActivitySplitterImpl;->mInstanceMap:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    :goto_0
    return-void

    .line 1558
    :cond_2
    :goto_1
    return-void
.end method

.method private removeCancelFlagInner(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 573
    if-eqz p1, :cond_0

    .line 574
    invoke-virtual {p1}, Landroid/content/Intent;->getHwFlags()I

    move-result v0

    .line 575
    .local v0, "hwFlag":I
    and-int/lit8 v0, v0, -0x9

    .line 576
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setHwFlags(I)Landroid/content/Intent;

    .line 578
    .end local v0    # "hwFlag":I
    :cond_0
    return-void
.end method

.method private removeFromEntryStack(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1749
    iget v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeRemoveEntry:I

    if-nez v0, :cond_0

    .line 1750
    const-string v0, "REMOVE_FROM_ENTRY_STACK_TRANSACTION"

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->getTransCode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeRemoveEntry:I

    .line 1753
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1754
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1755
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1756
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->getBasePid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1757
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1758
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeRemoveEntry:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1759
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1762
    return-void
.end method

.method private static resetFirsetTimeStart()V
    .locals 1

    .line 1574
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/HwActivitySplitterImpl;->mFirstTimeStart:Z

    .line 1575
    return-void
.end method

.method private restartLastContentIfNeeded(Z)V
    .locals 6
    .param p1, "fromConfigChange"    # Z

    .line 831
    const/4 v0, 0x0

    .line 832
    .local v0, "subIntent":Landroid/content/Intent;
    iget-boolean v1, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->getCurrentSubIntent()Landroid/content/Intent;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/app/HwActivitySplitterImpl;->mResumed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 838
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_3

    sget-boolean v2, Landroid/app/HwActivitySplitterImpl;->mFirstTimeStart:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/app/HwActivitySplitterImpl;->mRestart:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Landroid/app/HwActivitySplitterImpl;->mAllSubFinished:Z

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 840
    .local v2, "start":Z
    :goto_1
    sget-boolean v3, Landroid/util/Log;->HWLog:Z

    if-eqz v3, :cond_4

    const-string v3, "HwActivitySplitterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fromConfigChange ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", FirstTime start ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Landroid/app/HwActivitySplitterImpl;->mFirstTimeStart:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mRestart ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Landroid/app/HwActivitySplitterImpl;->mRestart:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_4
    iput-boolean v1, p0, Landroid/app/HwActivitySplitterImpl;->mRestart:Z

    .line 844
    sput-boolean v1, Landroid/app/HwActivitySplitterImpl;->mFirstTimeStart:Z

    .line 846
    if-eqz v2, :cond_5

    .line 847
    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->setSecondStageIntent(Landroid/content/Intent;)V

    .line 848
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->reachSplitSize()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 850
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->clearSplittableInfo()V

    .line 854
    :try_start_0
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 857
    :catch_0
    move-exception v1

    .line 859
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/app/HwActivitySplitterImpl;->setCurrentSubIntent(Landroid/content/Intent;)V

    .line 860
    const-string v3, "HwActivitySplitterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity Fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 855
    :catch_1
    move-exception v1

    .line 856
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "HwActivitySplitterImpl"

    const-string v4, "startActivity Fail, ActivityNotFound!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    nop

    .line 865
    :cond_5
    :goto_3
    return-void

    .line 833
    .end local v2    # "start":Z
    :cond_6
    :goto_4
    sget-boolean v1, Landroid/util/Log;->HWLog:Z

    if-eqz v1, :cond_7

    const-string v1, "HwActivitySplitterImpl"

    const-string v2, "Try to start subintent, return 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_7
    return-void
.end method

.method private setActionBarButton(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 640
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->isBaseActivityNeedExit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    return-void

    .line 644
    :cond_0
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->getActionBarView()Landroid/view/View;

    move-result-object v0

    .line 645
    .local v0, "abLayout":Landroid/view/View;
    if-nez v0, :cond_1

    .line 646
    return-void

    .line 649
    :cond_1
    const v1, 0x10204bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 650
    .local v1, "up":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 651
    iget v2, p0, Landroid/app/HwActivitySplitterImpl;->mUpButtonVisibility:I

    if-gez v2, :cond_2

    .line 652
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    iput v2, p0, Landroid/app/HwActivitySplitterImpl;->mUpButtonVisibility:I

    .line 655
    :cond_2
    if-eqz p1, :cond_3

    .line 657
    iget v2, p0, Landroid/app/HwActivitySplitterImpl;->mUpButtonVisibility:I

    if-nez v2, :cond_4

    .line 658
    iget-object v2, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 660
    :cond_3
    iget-object v2, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 664
    :cond_4
    :goto_0
    return-void
.end method

.method public static setAsJumpActivity(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 1301
    if-eqz p0, :cond_0

    .line 1302
    const-string v0, "huawei.intent.extra.JUMPED_ACTIVITY"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1304
    :cond_0
    return-void
.end method

.method private setBaseActivity()V
    .locals 1

    .line 1407
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    .line 1408
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->markBaseActivity(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1409
    return-void
.end method

.method private static setControllerShowingValue(Z)V
    .locals 0
    .param p0, "showing"    # Z

    .line 362
    sput-boolean p0, Landroid/app/HwActivitySplitterImpl;->mControllerShowing:Z

    .line 363
    return-void
.end method

.method private setCurrentSubIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 416
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/app/HwActivitySplitterImpl;->setIntentInfo(Landroid/content/Intent;ILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HwActivitySplitterImpl"

    const-string v2, "Record sub-intent info fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private setIntentInfo(Landroid/content/Intent;ILandroid/os/Bundle;Z)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pid"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "forLast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1656
    iget v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeSetLast:I

    if-nez v0, :cond_0

    .line 1657
    const-string v0, "SET_LAST_SPLIT_ACTIVITY_TRANSACTION"

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->getTransCode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeSetLast:I

    .line 1660
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1661
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1662
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1663
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1664
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1665
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1666
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1667
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget v4, p0, Landroid/app/HwActivitySplitterImpl;->mTransCodeSetLast:I

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1668
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1670
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1671
    return-void
.end method

.method private setLastSplittableActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 408
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->getIntentBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/app/HwActivitySplitterImpl;->setIntentInfo(Landroid/content/Intent;ILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HwActivitySplitterImpl"

    const-string v2, "Record activity info fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static setNotSplit(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 1295
    if-eqz p0, :cond_0

    .line 1296
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addHwFlags(I)Landroid/content/Intent;

    .line 1298
    :cond_0
    return-void
.end method

.method private setSecondStageIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1390
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->reachSplitSize()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->needCancelSplit(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1394
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->setLastSplittableActivity(Landroid/content/Intent;)V

    .line 1396
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->setToSecondaryStage(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1398
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->isBaseActivityNeedExit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1399
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->setToExitAlone(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1403
    :cond_1
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->deliverExtraInfo(Landroid/content/Intent;)V

    .line 1404
    return-void

    .line 1391
    :cond_2
    :goto_0
    return-void
.end method

.method private setSubIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 393
    if-eqz p1, :cond_0

    const-string v0, "huawei.extra.splitmode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->setCurrentSubIntent(Landroid/content/Intent;)V

    .line 395
    return-void

    .line 400
    :cond_0
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->isJumpedActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->setCurrentSubIntent(Landroid/content/Intent;)V

    .line 403
    :cond_1
    return-void
.end method

.method private setToExitAlone(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 130
    if-nez p1, :cond_0

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->getSplitModeValue(Landroid/content/Intent;)I

    move-result v0

    .line 135
    .local v0, "value":I
    or-int/lit8 v0, v0, 0x2

    .line 136
    const-string v1, "huawei.extra.splitmode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private setToExitTogether(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 144
    if-nez p1, :cond_0

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->getSplitModeValue(Landroid/content/Intent;)I

    move-result v0

    .line 149
    .local v0, "value":I
    and-int/lit8 v0, v0, -0x3

    .line 150
    const-string v1, "huawei.extra.splitmode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private setToSecondaryStage(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->getSplitModeValue(Landroid/content/Intent;)I

    move-result v0

    .line 123
    .local v0, "value":I
    or-int/lit8 v0, v0, 0x1

    .line 124
    const-string v1, "huawei.extra.splitmode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private splitActivity()V
    .locals 6

    .line 872
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_0

    const-string v0, "HwActivitySplitterImpl"

    const-string v1, "Try to split Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_0
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->reachSplitSize()Z

    move-result v0

    if-nez v0, :cond_1

    .line 874
    const-string v0, "HwActivitySplitterImpl"

    const-string v1, "Not support split, return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return-void

    .line 877
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplit:Z

    .line 879
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_2

    const-string v0, "HwActivitySplitterImpl"

    const-string v1, "Begin to split activity."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_2
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 883
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "huawei.intent.extra.SPLIT_REGION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 884
    .local v1, "p":Landroid/os/Parcelable;
    const/4 v2, 0x0

    .line 885
    .local v2, "r":Landroid/graphics/Rect;
    instance-of v3, v1, Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    .line 886
    move-object v2, v1

    check-cast v2, Landroid/graphics/Rect;

    .line 888
    :cond_3
    if-eqz v2, :cond_4

    .line 889
    const v3, 0x800033

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 890
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 891
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 892
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 893
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 894
    sget-boolean v3, Landroid/util/Log;->HWLog:Z

    if-eqz v3, :cond_7

    const-string v3, "HwActivitySplitterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rect left "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", right "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", top "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bottom "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 896
    :cond_4
    iget v3, p0, Landroid/app/HwActivitySplitterImpl;->mContentWindowWeight:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    .line 897
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->getContentWeight()F

    move-result v3

    iput v3, p0, Landroid/app/HwActivitySplitterImpl;->mContentWindowWeight:F

    .line 899
    :cond_5
    const v3, 0x800003

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 900
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->getCurrentWindowWidth()I

    move-result v3

    .line 902
    .local v3, "winWidth":I
    iget v4, p0, Landroid/app/HwActivitySplitterImpl;->mContentWindowWeight:F

    int-to-float v5, v3

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 905
    .local v4, "contentWidth":I
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->isRtlLocale()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 906
    const/4 v5, 0x0

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 908
    :cond_6
    sub-int v5, v3, v4

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 912
    :goto_0
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 915
    .end local v3    # "winWidth":I
    .end local v4    # "contentWidth":I
    :cond_7
    :goto_1
    iget-object v3, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 918
    iget-object v3, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 919
    return-void
.end method


# virtual methods
.method public adjustToFullScreen()V
    .locals 2

    .line 952
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 953
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 954
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 955
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 956
    return-void
.end method

.method public adjustToSplitScreen()V
    .locals 0

    .line 959
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->splitActivity()V

    .line 960
    return-void
.end method

.method public adjustWindow(I)V
    .locals 4
    .param p1, "width"    # I

    .line 934
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 935
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->getCurrentWindowWidth()I

    move-result v1

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 936
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 937
    sget-boolean v1, Landroid/util/Log;->HWLog:Z

    if-eqz v1, :cond_0

    const-string v1, "HwActivitySplitterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjust content view, set width to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_0
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 939
    return-void
.end method

.method public adjustWindow(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 942
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 943
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 944
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 945
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 946
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 947
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 948
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 949
    return-void
.end method

.method public cancelSplit(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1431
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addHwFlags(I)Landroid/content/Intent;

    .line 1432
    return-void
.end method

.method public checkAllContentGone()Z
    .locals 3

    .line 990
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 991
    return v1

    .line 994
    :cond_0
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mAllContentGone:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mAllSubFinished:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->isBaseActivityNeedExit()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->reachSplitSize()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 995
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_1

    const-string v0, "HwActivitySplitterImpl"

    const-string v1, "AllContentGone."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_1
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->getCurrentSubIntent()Landroid/content/Intent;

    move-result-object v0

    .line 997
    .local v0, "subIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 998
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1001
    :cond_2
    return v2

    .line 1004
    .end local v0    # "subIntent":Landroid/content/Intent;
    :cond_3
    iput-boolean v2, p0, Landroid/app/HwActivitySplitterImpl;->mAllContentGone:Z

    .line 1005
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->clearSplittableInfo()V

    .line 1006
    return v1
.end method

.method public clearIllegalSplitActivity()V
    .locals 0

    .line 1139
    return-void
.end method

.method public finishAllSubActivities()V
    .locals 1

    .line 1539
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-nez v0, :cond_0

    .line 1540
    return-void

    .line 1542
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->clearEntryStack(Z)V

    .line 1544
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->clearSplittableInfo()V

    .line 1546
    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mAllSubFinished:Z

    .line 1547
    return-void
.end method

.method public getActionBarView()Landroid/view/View;
    .locals 7

    .line 447
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 449
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "hwtoolbar"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 450
    .local v1, "resId":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 451
    .local v2, "actionBar":Landroid/view/View;
    if-nez v2, :cond_0

    .line 452
    iget-object v3, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "hwtoolbar"

    const-string v5, "id"

    iget-object v6, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 453
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 456
    :cond_0
    return-object v2
.end method

.method public getCurrentSubIntent()Landroid/content/Intent;
    .locals 3

    .line 1421
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/HwActivitySplitterImpl;->getIntentInfo(IZ)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1423
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HwActivitySplitterImpl"

    const-string v2, "LastSplittableActivity FAIL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleBackPressed()V
    .locals 1

    .line 1211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mBackPressed:Z

    .line 1212
    return-void
.end method

.method public handleJumpActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1309
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsJumpActivity:Z

    .line 1310
    invoke-static {p1}, Landroid/app/HwActivitySplitterImpl;->setAsJumpActivity(Landroid/content/Intent;)V

    .line 1311
    return-void
.end method

.method public hideAllContent()V
    .locals 1

    .line 824
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->clearEntryStack(Z)V

    .line 825
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->clearSplittableInfo()V

    .line 826
    return-void
.end method

.method public isControllerShowing()Z
    .locals 1

    .line 369
    sget-boolean v0, Landroid/app/HwActivitySplitterImpl;->mControllerShowing:Z

    return v0
.end method

.method public isDuplicateSplittableActivity(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1069
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->isNeedPerformAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    const/4 v0, 0x1

    return v0

    .line 1074
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1075
    return v0

    .line 1078
    :cond_1
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->redirectIntent(Landroid/content/Intent;)V

    .line 1081
    iget-boolean v1, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-eqz v1, :cond_3

    .line 1082
    :cond_2
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->markJumpedActivity(Landroid/content/Intent;)V

    .line 1086
    :cond_3
    iget-boolean v1, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->reachSplitSize()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 1090
    :cond_4
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->isLastIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 1087
    :cond_5
    :goto_0
    return v0
.end method

.method protected isNeedPerformAction()Z
    .locals 4

    .line 1095
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/app/HwActivitySplitterImpl;->mEventDelayTimeBegin:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1096
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/HwActivitySplitterImpl;->mEventDelayTimeBegin:J

    .line 1097
    const-string v0, "HwActivitySplitterImpl"

    const-string v1, "click is too often, ignored in 500ms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const/4 v0, 0x0

    return v0

    .line 1100
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/HwActivitySplitterImpl;->mEventDelayTimeBegin:J

    .line 1101
    const/4 v0, 0x1

    return v0
.end method

.method public isRtlLocale()Z
    .locals 4

    .line 1581
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1582
    .local v0, "currentLang":Ljava/lang/String;
    sget-boolean v1, Landroid/util/Log;->HWLog:Z

    if-eqz v1, :cond_0

    const-string v1, "HwActivitySplitterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentLang is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_0
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "iw"

    .line 1584
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ug"

    .line 1585
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 1583
    :goto_1
    return v1
.end method

.method public isSplitBaseActivity()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    return v0
.end method

.method public isSplitMode()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplit:Z

    return v0
.end method

.method public isSplitSecondActivity()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    return v0
.end method

.method public needSplitActivity()Z
    .locals 1

    .line 509
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 510
    const/4 v0, 0x0

    return v0

    .line 512
    :cond_0
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/HwActivitySplitterImpl;->needSplitActivity(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public needSplitActivity(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "split":Z
    if-eqz p1, :cond_5

    .line 523
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getHwFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->needCancelSplit(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "huawei.extra.splitmode"

    .line 524
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    .line 527
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->checkSecondStage(Landroid/content/Intent;)V

    .line 528
    if-nez v0, :cond_2

    .line 529
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->disposeFakeActivity(Landroid/content/Intent;)V

    .line 532
    :cond_2
    iget-boolean v1, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-eqz v1, :cond_4

    .line 533
    if-eqz v0, :cond_3

    .line 535
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->setSubIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 538
    :cond_3
    invoke-virtual {p0, v2}, Landroid/app/HwActivitySplitterImpl;->setExitWhenContentGone(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :cond_4
    :goto_1
    goto :goto_2

    .line 541
    :catch_0
    move-exception v1

    .line 542
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "HwActivitySplitterImpl"

    const-string v3, " needSplitActivity parcel err!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_5
    :goto_2
    return v0
.end method

.method public notSupportSplit()Z
    .locals 1

    .line 604
    const/4 v0, 0x0

    return v0
.end method

.method public onSplitActivityConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1142
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_0

    const-string v0, "HwActivitySplitterImpl"

    const-string v1, "In onConfigurationChanged."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_0
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/util/HwPCUtils;->isValidExtDisplayId(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/util/HwPCUtils;->enabledInPad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    const-string v0, "HwActivitySplitterImpl"

    const-string v1, "In PC mode, split mode Configuration handle terminate."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    return-void

    .line 1149
    :cond_1
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 1150
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->reachSplitSize()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1151
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->adjustContentIndexView()V

    .line 1153
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_2

    const-string v0, "HwActivitySplitterImpl"

    const-string v2, "Try to start subintent from onConfigChanged"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_2
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->isBaseActivityNeedExit()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1156
    invoke-direct {p0, v1}, Landroid/app/HwActivitySplitterImpl;->restartLastContentIfNeeded(Z)V

    goto :goto_0

    .line 1160
    :cond_3
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1161
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1163
    :cond_4
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->reduceIndexView()V

    goto :goto_0

    .line 1165
    :cond_5
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->needSplitActivity()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1166
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->reachSplitSize()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1167
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->splitActivity()V

    goto :goto_0

    .line 1169
    :cond_6
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 1170
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1171
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1173
    :cond_7
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->reduceActivity()V

    .line 1176
    :cond_8
    :goto_0
    return-void
.end method

.method public onSplitActivityDestroy()V
    .locals 0

    .line 1550
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->releaseIfNeed()V

    .line 1551
    return-void
.end method

.method public onSplitActivityNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1010
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mAllContentGone:Z

    if-eqz v0, :cond_0

    .line 1012
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mAllContentGone:Z

    .line 1015
    :cond_0
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplit:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mResumed:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/HwActivitySplitterImpl;->needSplitActivity(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1017
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->needReduceActivity(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1018
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->reduceActivity()V

    goto :goto_0

    .line 1020
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/HwActivitySplitterImpl;->needSplitActivity(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplit:Z

    if-nez v0, :cond_2

    .line 1021
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->splitActivity()V

    .line 1023
    :cond_2
    :goto_0
    return-void
.end method

.method public onSplitActivityRestart()V
    .locals 1

    .line 814
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mRestart:Z

    .line 815
    return-void
.end method

.method public reachSplitSize()Z
    .locals 1

    .line 820
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/util/HwPCUtils;->isValidExtDisplayId(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/HwSplitUtils;->isNeedSplit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reduceActivity()V
    .locals 2

    .line 976
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplit:Z

    .line 978
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 979
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 980
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 981
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 982
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 984
    iget-boolean v1, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-eqz v1, :cond_0

    .line 985
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/app/HwActivitySplitterImpl;->setActionBarButton(Z)V

    .line 987
    :cond_0
    return-void
.end method

.method public reduceIndexView()V
    .locals 2

    .line 480
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mContentIndexView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 481
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mContentIndexView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 485
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 486
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mContentIndexView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->reduceActionBar()V

    .line 489
    return-void
.end method

.method public removeCancelFlag(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 565
    if-eqz p1, :cond_0

    .line 566
    invoke-virtual {p1}, Landroid/content/Intent;->getHwFlags()I

    move-result v0

    .line 567
    .local v0, "hwFlag":I
    and-int/lit8 v0, v0, -0x9

    .line 568
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setHwFlags(I)Landroid/content/Intent;

    .line 570
    .end local v0    # "hwFlag":I
    :cond_0
    return-void
.end method

.method public restartLastContentIfNeeded()V
    .locals 1

    .line 868
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->restartLastContentIfNeeded(Z)V

    .line 869
    return-void
.end method

.method public setActivityInfo(Landroid/app/Activity;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 84
    iput-object p1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    .line 85
    iput-object p2, p0, Landroid/app/HwActivitySplitterImpl;->mToken:Landroid/os/IBinder;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mRecycled:Z

    .line 87
    return-void
.end method

.method public setAnimForSplitActivity()V
    .locals 0

    .line 1436
    return-void
.end method

.method public setControllerShowing(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .line 357
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_0

    const-string v0, "HwActivitySplitterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set controller showing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    invoke-static {p1}, Landroid/app/HwActivitySplitterImpl;->setControllerShowingValue(Z)V

    .line 359
    return-void
.end method

.method public setExitWhenContentGone(Z)V
    .locals 2
    .param p1, "exit"    # Z

    .line 1184
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->setToExitTogether(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 1185
    :cond_0
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->setToExitAlone(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 1188
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v0, :cond_1

    .line 1189
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1191
    :cond_1
    return-void
.end method

.method public setFirstIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 376
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->getCurrentSubIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 378
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->setSecondStageIntent(Landroid/content/Intent;)V

    .line 379
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->setSubIntent(Landroid/content/Intent;)V

    .line 381
    :cond_0
    return-void
.end method

.method public setResumed(Z)V
    .locals 4
    .param p1, "resumed"    # Z

    .line 1443
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-nez v0, :cond_0

    .line 1444
    return-void

    .line 1447
    :cond_0
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_1

    const-string v0, "HwActivitySplitterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set resumed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_1
    iput-boolean p1, p0, Landroid/app/HwActivitySplitterImpl;->mResumed:Z

    .line 1450
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-eqz v0, :cond_4

    .line 1451
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_2

    const-string v0, "HwActivitySplitterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResumed, Base window splitted? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/app/HwActivitySplitterImpl;->mAllSubFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_2
    const/4 v0, 0x5

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Landroid/app/HwActivitySplitterImpl;->mAllSubFinished:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->reachSplitSize()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1453
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->checkSplitHandler()V

    .line 1454
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1456
    :cond_3
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1457
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1462
    :cond_4
    :goto_0
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->isBaseActivityNeedExit()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1463
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mResumed:Z

    if-eqz v0, :cond_5

    .line 1464
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsFinishing:Z

    .line 1467
    :cond_5
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 1468
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1472
    :cond_6
    return-void
.end method

.method public setSplit()V
    .locals 4

    .line 340
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->setBaseActivity()V

    .line 341
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x20b0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 342
    .local v0, "leftWeight":I
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 343
    .local v1, "rightWeight":I
    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, v2

    add-int v2, v0, v1

    int-to-float v2, v2

    div-float/2addr v3, v2

    iput v3, p0, Landroid/app/HwActivitySplitterImpl;->mContentWindowWeight:F

    .line 344
    return-void
.end method

.method public setSplit(F)V
    .locals 0
    .param p1, "contentWeight"    # F

    .line 332
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->setBaseActivity()V

    .line 333
    iput p1, p0, Landroid/app/HwActivitySplitterImpl;->mContentWindowWeight:F

    .line 334
    return-void
.end method

.method public setSplit(Landroid/view/View;)V
    .locals 5
    .param p1, "contentIndexView"    # Landroid/view/View;

    .line 316
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->setBaseActivity()V

    .line 317
    iput-object p1, p0, Landroid/app/HwActivitySplitterImpl;->mContentIndexView:Landroid/view/View;

    .line 319
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x20b0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 320
    .local v0, "leftWeight":I
    iget-object v1, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 321
    .local v1, "rightWeight":I
    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    add-int v4, v0, v1

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, p0, Landroid/app/HwActivitySplitterImpl;->mContentIndexViewWeight:F

    .line 322
    iget v2, p0, Landroid/app/HwActivitySplitterImpl;->mContentIndexViewWeight:F

    sub-float/2addr v3, v2

    iput v3, p0, Landroid/app/HwActivitySplitterImpl;->mContentWindowWeight:F

    .line 324
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->adjustContentIndexView()V

    .line 325
    return-void
.end method

.method public setSplit(Landroid/view/View;F)V
    .locals 2
    .param p1, "contentIndexView"    # Landroid/view/View;
    .param p2, "weight"    # F

    .line 301
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->setBaseActivity()V

    .line 302
    iput-object p1, p0, Landroid/app/HwActivitySplitterImpl;->mContentIndexView:Landroid/view/View;

    .line 304
    iput p2, p0, Landroid/app/HwActivitySplitterImpl;->mContentIndexViewWeight:F

    .line 305
    iget v0, p0, Landroid/app/HwActivitySplitterImpl;->mContentIndexViewWeight:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Landroid/app/HwActivitySplitterImpl;->mContentWindowWeight:F

    .line 307
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->adjustContentIndexView()V

    .line 308
    return-void
.end method

.method public setSplitActivityOrientation(I)V
    .locals 0
    .param p1, "requestedOrientation"    # I

    .line 1417
    return-void
.end method

.method public setSplitDeviceSize(DD)V
    .locals 4
    .param p1, "landSplitLimit"    # D
    .param p3, "portSplitLimit"    # D

    .line 1617
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extras_hw_split_size"

    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    const/4 v3, 0x1

    aput-wide p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 1620
    :cond_0
    return-void
.end method

.method public setSplittableIfNeeded(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1324
    if-nez p1, :cond_0

    .line 1325
    const-string v0, "HwActivitySplitterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent null when set splittable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    return-void

    .line 1329
    :cond_0
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_1

    const-string v0, "HwActivitySplitterImpl"

    const-string v1, "Set splittable if needed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mAllSubFinished:Z

    .line 1333
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-eqz v0, :cond_3

    .line 1334
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_2

    const-string v0, "HwActivitySplitterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need split for intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_2
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->setSecondStageIntent(Landroid/content/Intent;)V

    .line 1338
    sget-object v0, Landroid/app/HwActivitySplitterImpl;->EXTRA_SPLIT_BASE_PID:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1341
    :cond_3
    iget v0, p0, Landroid/app/HwActivitySplitterImpl;->mContentWindowWeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_4

    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->needSplitActivity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1342
    :cond_4
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->needCancelSplit(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1343
    return-void

    .line 1346
    :cond_5
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_6

    const-string v0, "HwActivitySplitterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set splittable for intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_6
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->deliverExtraInfo(Landroid/content/Intent;)V

    .line 1351
    :cond_7
    :goto_0
    return-void
.end method

.method public setTargetIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 385
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->setToSecondaryStage(Landroid/content/Intent;)Landroid/content/Intent;

    .line 387
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->setSubIntent(Landroid/content/Intent;)V

    .line 388
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->deliverExtraInfo(Landroid/content/Intent;)V

    .line 389
    return-void
.end method

.method public setToForceSplit(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 178
    if-nez p1, :cond_0

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 182
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->getSplitModeValue(Landroid/content/Intent;)I

    move-result v0

    .line 183
    .local v0, "value":I
    or-int/lit8 v0, v0, 0x8

    .line 184
    const-string v1, "huawei.extra.splitmode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public setToSubIntentOne(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 168
    if-nez p1, :cond_0

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/HwActivitySplitterImpl;->getSplitModeValue(Landroid/content/Intent;)I

    move-result v0

    .line 173
    .local v0, "value":I
    or-int/lit8 v0, v0, 0x10

    .line 174
    const-string v1, "huawei.extra.splitmode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public splitActivityFinish()V
    .locals 2

    .line 1502
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->finishAssociatedActivities()V

    .line 1506
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mAllContentGone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->isBaseActivityNeedExit()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsJumpActivity:Z

    if-nez v0, :cond_2

    .line 1507
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->isJumpedActivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1508
    :cond_0
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_1

    const-string v0, "HwActivitySplitterImpl"

    const-string v1, "Clear LastActivity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_1
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->clearSplittableInfo()V

    .line 1513
    :cond_2
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->releaseIfNeed()V

    .line 1516
    iget-boolean v0, p0, Landroid/app/HwActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-eqz v0, :cond_3

    .line 1517
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->finishAllSubActivities()V

    .line 1520
    :cond_3
    return-void
.end method

.method public splitActivityIfNeeded()V
    .locals 1

    .line 614
    invoke-virtual {p0}, Landroid/app/HwActivitySplitterImpl;->reachSplitSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    invoke-direct {p0}, Landroid/app/HwActivitySplitterImpl;->splitActivity()V

    .line 618
    :cond_0
    iget-object v0, p0, Landroid/app/HwActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/HwActivitySplitterImpl;->handleSplitActivityStack(Landroid/content/Intent;)V

    .line 619
    return-void
.end method
